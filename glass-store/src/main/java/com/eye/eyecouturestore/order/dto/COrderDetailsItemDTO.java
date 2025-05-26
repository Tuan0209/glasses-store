package com.eye.eyecouturestore.order.dto;

import com.eye.eyecouturestore.product.dto.CProductDTO;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import java.math.BigDecimal;
@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class COrderDetailsItemDTO {
    private String id;

    private CProductDTO product;

    private int quantity;

    private String color;

    private String size;

    private BigDecimal total;
}
