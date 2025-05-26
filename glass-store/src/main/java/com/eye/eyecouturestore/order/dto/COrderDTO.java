package com.eye.eyecouturestore.order.dto;

import com.eye.eyecouturestore.order.model.COrderStatus;
import com.eye.eyecouturestore.user.dto.CUserDetailsDTO;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class COrderDTO {
    private String id;
    private COrderDetailsDTO orderDetails;
    private COrderStatus status;
    private CUserDetailsDTO user;
}
