package com.eye.eyecouturestore.order.service;

import com.eye.eyecouturestore.common.dto.CPagingDTO;
import com.eye.eyecouturestore.order.dto.CCheckoutDTO;
import com.eye.eyecouturestore.order.dto.COrderDTO;
import com.eye.eyecouturestore.order.dto.COrderUpdateDTO;

import java.util.List;

public interface COrderService {

    List<COrderDTO> getAllByUserId(String userId);

    CCheckoutDTO getCheckoutDTO(String userId,List<String> cartItemIdList);

    COrderDTO createOrder(String userId,CCheckoutDTO checkoutDTO);

    CPagingDTO findAll(int page,int limit,String orderBy);

    COrderDTO getOrderById(String orderId);

    boolean deleleOrderById(String orderId);

    COrderDTO updateOrder(String orderId, COrderUpdateDTO orderUpdateDTO);
}
