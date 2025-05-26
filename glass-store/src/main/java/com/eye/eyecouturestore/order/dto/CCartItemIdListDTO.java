package com.eye.eyecouturestore.order.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import java.util.List;
@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class CCartItemIdListDTO {
    List<String> cartItemIdList;
}
