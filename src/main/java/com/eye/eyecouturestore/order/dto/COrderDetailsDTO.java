package com.eye.eyecouturestore.order.dto;

import com.eye.eyecouturestore.order.model.COrderDetailsStatus;
import com.eye.eyecouturestore.order.model.CPaymentMethod;
import com.eye.eyecouturestore.order.model.CPaymentStatus;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.LinkedHashSet;
import java.util.Set;

@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class COrderDetailsDTO {
    private String id;

    private Set<COrderDetailsItemDTO> orderItems = new LinkedHashSet<>();

    private LocalDateTime orderDate;

    private int numOfProduct;

    private COrderDetailsStatus orderDetailsStatus;

    private String address;

    private String phone;

    private BigDecimal shippingCost;

    private BigDecimal surcharge;

    private BigDecimal total;

    private BigDecimal finalTotal;


    private CPaymentMethod paymentMethod;

    private CPaymentStatus paymentStatus;

}
