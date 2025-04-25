package com.eye.eyecouturestore.user.dto;

import com.eye.eyecouturestore.user.annotation.UniqueEmail;
import com.eye.eyecouturestore.user.annotation.UniqueUsername;
import com.eye.eyecouturestore.user.model.UserStatus;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class CUserDTO {
    @NotBlank(message="{user.username.notBlank}")
    @UniqueUsername(message="{user.username.existed}")
    private String username;

    @NotBlank
    private String displayName;

    @Email(message = "{user.email.notEmailType}")
    @UniqueEmail(message="{user.email.existed}")
    private String email;

    private UserStatus status;
}
