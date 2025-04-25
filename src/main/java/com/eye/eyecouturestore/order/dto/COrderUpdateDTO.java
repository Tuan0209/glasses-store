package com.eye.eyecouturestore.order.dto;

import com.eye.eyecouturestore.order.model.COrderStatus;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class COrderUpdateDTO {
    private COrderDetailsDTO orderDetails;
    private COrderStatus status;
}
