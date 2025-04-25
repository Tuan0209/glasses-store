package com.eye.eyecouturestore.role.mapper;

import com.eye.eyecouturestore.role.dto.CRoleDTO;
import com.eye.eyecouturestore.role.model.CRole;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
@Mapper
public interface CRoleMapper {
    CRoleMapper INSTANCE = Mappers.getMapper(CRoleMapper.class);
    CRoleDTO toDTO(CRole entity);
    CRole toEntity(CRoleDTO dto);
}
