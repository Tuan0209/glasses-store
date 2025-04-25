package com.eye.eyecouturestore.common.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;
@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class CPagingDTO {
    private Object data;
    private long total;
    private int page;
    private int limit;
}
