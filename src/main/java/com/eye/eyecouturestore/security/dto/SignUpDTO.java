package com.eye.eyecouturestore.security.dto;

import com.eye.eyecouturestore.user.annotation.UniqueEmail;
import com.eye.eyecouturestore.user.annotation.UniquePhone;
import com.eye.eyecouturestore.user.annotation.UniqueUsername;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class SignUpDTO {
    @NotBlank(message="{user.displayName.notblank}")
    private String displayName;

    @UniqueUsername(message="{user.username.existed}")
    @Size(min=6,max = 32,message = "{user.username.size}")
    private String username;

    @NotBlank
    @UniquePhone(message = "{user.phone.unique}")
    @Pattern(regexp = "(84|0[3|5|7|8|9])[0-9]{8}\\b",message = "{user.phone.validPhoneNumber}")
    private String phone;

    @UniqueEmail(message="{user.email.existed}")
    @NotBlank(message="{user.email.notblank}")
    @Email(message="{user.email.notEmailType}")
    private String email;

    @NotBlank(message="{user.email.notblank}")
    @Size(min=8,max=100,message="{user.password.size}")
    private String password;
}
