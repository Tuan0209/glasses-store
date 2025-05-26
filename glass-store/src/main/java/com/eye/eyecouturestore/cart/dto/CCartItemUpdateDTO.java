package com.eye.eyecouturestore.cart.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class CCartItemUpdateDTO {
    private int quantity;
    private String color;
    private String size;
}
