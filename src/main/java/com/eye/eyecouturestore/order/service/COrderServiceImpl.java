package com.eye.eyecouturestore.order.service;

import com.eye.eyecouturestore.cart.dto.CCartItemDTO;
import com.eye.eyecouturestore.cart.model.CCartItem;
import com.eye.eyecouturestore.cart.repository.CCartItemRepository;
import com.eye.eyecouturestore.cart.service.CCartService;
import com.eye.eyecouturestore.common.dto.CPagingDTO;
import com.eye.eyecouturestore.email.service.CEmailService;
import com.eye.eyecouturestore.order.dto.*;
import com.eye.eyecouturestore.order.mapper.COrderDetailsItemMapper;
import com.eye.eyecouturestore.order.mapper.COrderDetailsMapper;
import com.eye.eyecouturestore.order.model.*;
import com.eye.eyecouturestore.order.repository.COrderRepository;
import com.eye.eyecouturestore.product.model.CProduct;
import com.eye.eyecouturestore.product.model.CProductColor;
import com.eye.eyecouturestore.product.model.CProductSize;
import com.eye.eyecouturestore.product.repository.CProductRepository;
import com.eye.eyecouturestore.user.mapper.CUserMapper;
import com.eye.eyecouturestore.user.model.CUser;
import com.eye.eyecouturestore.user.repository.CUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class COrderServiceImpl implements COrderService {

    @Autowired
    private COrderRepository orderRepository;

    @Autowired
    private CCartItemRepository cartItemRepository;

    @Autowired
    private CEmailService emailService;

    @Autowired
    private CCartService cartService;

    @Autowired
    private CProductRepository productRepository;

    @Autowired
    private CUserRepository userRepository;


    @Override
    public List<COrderDTO> getAllByUserId(String userId) {
        List<COrder> orders = orderRepository.findAllByUser(userId);
        return orders.stream().map(this::toOrderDTO).collect(Collectors.toList());
    }

    public CPagingDTO findAll(int page, int limit, String orderBy) {
        Sort sort = null;
        if (orderBy != null) {
            String[] orderByParts = orderBy.split(":");
            if (orderByParts.length == 2) {
                String sortBy = orderByParts[0];
                String sortOrder = orderByParts[1].toLowerCase();

                Sort.Direction direction = sortOrder.equals("desc") ? Sort.Direction.DESC : Sort.Direction.ASC;
                sort = Sort.by(direction, sortBy);
            } else {
                sort = Sort.by(orderBy); // Default to ascending order if no specific order is provided
            }
        }

        assert sort != null;
        Pageable pageable = PageRequest.of(page - 1, limit, sort);
        Page<COrder> orderPage = orderRepository.findAll(pageable);

        List<COrderDTO> data = orderPage.stream().map(this::toOrderDTO).collect(Collectors.toList());
        return CPagingDTO.builder()
                .data(data)
                .page(page)
                .limit(limit)
                .total(orderPage.getTotalElements())
                .build();
    }

    @Override
    public COrderDTO getOrderById(String orderId) {

        Optional<COrder> orderOpt = orderRepository.findById(orderId);
        return orderOpt.map(this::toOrderDTO).orElse(null);

    }

    @Override
    public boolean deleleOrderById(String orderId) {
        try{
            orderRepository.deleteById(orderId);
        }catch (Exception e){
            return false;
        }
        return true;
    }

    @Override
    public COrderDTO updateOrder(String orderId, COrderUpdateDTO orderUpdateDTO) {
        Optional<COrder> orderOpt = orderRepository.findById(orderId);
        if(orderOpt.isEmpty())
            return null;
        COrder order = orderOpt.get();
        COrderDetailsDTO orderDetailsDTO = orderUpdateDTO.getOrderDetails();
        COrderDetails orderDetails = order.getOrderDetails();

        orderDetails.setOrderDetailsStatus(orderDetailsDTO.getOrderDetailsStatus());
        orderDetails.setAddress(orderDetailsDTO.getAddress());
        orderDetails.setPaymentMethod(orderDetailsDTO.getPaymentMethod());
        orderDetails.setPaymentStatus(orderDetailsDTO.getPaymentStatus());

        order.setStatus(orderUpdateDTO.getStatus());
        order.setOrderDetails(orderDetails);
        COrder newOrder = orderRepository.save(order);

        return toOrderDTO(newOrder);
    }


    @Override
    public CCheckoutDTO getCheckoutDTO(String userId, List<String> cartItemIdList) {
        Set<CCartItem> cartItems = cartItemIdList.stream()
                .map(item -> cartItemRepository.findById(item))
                .filter(Optional::isPresent)
                .map(Optional::get)
                .collect(Collectors.toSet());

        if (cartItems.isEmpty())
            return null;

        return CCheckoutDTO.builder()
                .address(null)
                .items(cartItems.stream()
                        .map(item -> {
                            CCartItemDTO dto = new CCartItemDTO();
                            dto.mapFromEntity(item);
                            return dto;
                        }).collect(Collectors.toSet()))
                .numOfProduct(cartItems.stream()
                        .mapToInt(CCartItem::getQuantity)
                        .sum())
                .total(cartItems.stream()
                        .map(CCartItem::originalPrice)
                        .reduce(BigDecimal.ZERO, BigDecimal::add))
                .finalTotal(cartItems.stream()
                        .map(CCartItem::finalPrice)
                        .reduce(BigDecimal.ZERO, BigDecimal::add))
                .shippingCost(BigDecimal.ZERO)
                .surcharge(BigDecimal.ZERO)
                .paymentStatus(CPaymentStatus.UNPAID)
                .build();
    }

    @Override
    public COrderDTO createOrder(String userId, CCheckoutDTO checkoutDTO) {
        Optional<CUser> userOpt = userRepository.findById(userId);

        if (userOpt.isEmpty()) return null;

        CUser user = userOpt.get();
        String userEmail = user.getEmail();

        // Kiểm tra tính hợp lệ của địa chỉ email
        if (!isValidEmail(userEmail)) {
            throw new IllegalArgumentException("Invalid email address: " + userEmail);
        }

        COrderDetails orderDetails = COrderDetails.builder()
                .address(checkoutDTO.getAddress())
                .phone(checkoutDTO.getPhone())
                .numOfProduct(checkoutDTO.getNumOfProduct())
                .total(checkoutDTO.getTotal())
                .finalTotal(checkoutDTO.getFinalTotal())
                .shippingCost(checkoutDTO.getShippingCost())
                .surcharge(checkoutDTO.getSurcharge())
                .paymentMethod(checkoutDTO.getPaymentMethod())
                .orderDetailsStatus(COrderDetailsStatus.NOT_READY)
                .paymentStatus(CPaymentStatus.UNPAID)
                .orderItems(new LinkedHashSet<>())
                .build();

        checkoutDTO.getItems().forEach(item -> {
            Optional<CProduct> productOpt = productRepository.findById(item.getProduct().getId());

            if (productOpt.isEmpty())
                return;
            CProduct product = productOpt.get();

            CProductColor productColor = null;
            CProductSize productSize = null;
            if (product.getColors() != null && product.getSizes() != null) {
                productColor = product.getColors().stream().filter(a -> a.getId().equals(item.getColor())).findFirst().orElse(null);
                productSize = product.getSizes().stream().filter(a -> a.getId().equals(item.getSize())).findFirst().orElse(null);
            }
            String color = productColor != null ? productColor.getName() : null;
            String size = productSize != null ? productSize.getSize() : null;

            COrderDetailsItem orderItem = COrderDetailsItem.builder()
                    .quantity(item.getQuantity())
                    .total(item.getFinalPrice())
                    .product(product)
                    .color(color)
                    .size(size)
                    .orderDetails(orderDetails) // Bổ xung thêm chi tiết đơn hàng vào đây
                    .build();
            orderDetails.addOrderDetailsItem(orderItem);
        });


        COrder order = COrder.builder()
                .user(user)
                .orderDetails(orderDetails)
                .status(COrderStatus.AWAITING)
                .build();

        COrder newOrder = orderRepository.save(order);
        COrderDTO newOrderDto = toOrderDTO(newOrder);
        emailService.sendOrderInfoEmail(order.getUser().getDisplayName(),order.getUser().getEmail(),newOrderDto);
        return newOrderDto;
    }


    // Phương thức kiểm tra tính hợp lệ của địa chỉ email
    private boolean isValidEmail(String email) {
        String emailRegex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        return email.matches(emailRegex);
    }

    private COrderDTO toOrderDTO(COrder order) {
        COrderDetails orderDetails = order.getOrderDetails();
        COrderDetailsDTO orderDetailsDTO = COrderDetailsMapper.INSTANCE.toDTO(orderDetails);
        Set<COrderDetailsItemDTO> orderDetailsItems = orderDetails.getOrderItems().stream().map(COrderDetailsItemMapper.INSTANCE::toDTO).collect(Collectors.toSet());
        orderDetailsDTO.setOrderItems(orderDetailsItems);
        return COrderDTO.builder().user(CUserMapper.INSTANCE.toUserDetailsDTO(order.getUser())).status(order.getStatus()).id(order.getId()).orderDetails(orderDetailsDTO).build();
    }
}
