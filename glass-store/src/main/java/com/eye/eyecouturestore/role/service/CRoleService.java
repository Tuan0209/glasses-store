package com.eye.eyecouturestore.role.service;

import com.eye.eyecouturestore.role.dto.CRoleDTO;
import com.eye.eyecouturestore.role.model.CRole;

import java.util.List;

public interface CRoleService {
    List<CRole> findAll();
    CRoleDTO save(CRoleDTO role);
    boolean removeRole(String roleId);
    CRoleDTO updateRole(String roleId, CRoleDTO dto);
}
