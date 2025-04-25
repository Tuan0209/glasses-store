package com.eye.eyecouturestore.role.dto;

import com.eye.eyecouturestore.role.validation.UniqueCode;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class CRoleDTO {
    public String id;

    @NotBlank
    @Size(min = 6,max = 32,message = "{role.code.size}")
    @UniqueCode
    public String code;

    @NotBlank(message = "{role.description.notBlank}")
    public String description;
}
