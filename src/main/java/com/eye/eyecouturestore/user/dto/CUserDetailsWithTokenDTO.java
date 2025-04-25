package com.eye.eyecouturestore.user.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Builder
public class CUserDetailsWithTokenDTO {
    private CUserDetailsDTO userDetail;
    private String token;
}
