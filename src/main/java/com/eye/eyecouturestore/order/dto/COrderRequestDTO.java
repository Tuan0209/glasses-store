package com.eye.eyecouturestore.order.dto;

import com.eye.eyecouturestore.order.model.CPaymentMethod;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import java.math.BigDecimal;
import java.util.List;
@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class COrderRequestDTO {
    private String userId;
    private List<String> cartItemId;
    private BigDecimal shippingCost;
    private CPaymentMethod paymentMethod;
}
