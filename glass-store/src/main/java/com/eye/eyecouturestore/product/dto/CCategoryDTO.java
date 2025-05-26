package com.eye.eyecouturestore.product.dto;

import com.eye.eyecouturestore.product.validation.UniqueCategoryName;
import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class CCategoryDTO {
    private String id;
    @UniqueCategoryName
    private String name;
    @NotBlank
    private String description;

    @NotBlank
    private String tag;
}
