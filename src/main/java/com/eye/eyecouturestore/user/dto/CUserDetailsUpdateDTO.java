package com.eye.eyecouturestore.user.dto;

import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class CUserDetailsUpdateDTO {
    @NotBlank
    private String displayName;
    private String firstName;
    private String lastName;
    private String avatar;
    @NotBlank
    private String phone;
}
