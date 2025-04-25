package com.eye.eyecouturestore.user.dto;

import com.eye.eyecouturestore.role.model.CRole;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import java.util.List;
@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class CUserDetailsAndRolesDTO {
    private CUserDetailsDTO userDetails;
    private List<CRole> roles;
}
