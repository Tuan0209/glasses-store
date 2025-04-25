package com.eye.eyecouturestore.user.mapper;

import com.eye.eyecouturestore.user.dto.CUserAddressDTO;
import com.eye.eyecouturestore.user.model.CUserAddress;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.factory.Mappers;
@Mapper
public interface CUserAddressMapper {
    CUserAddressMapper INSTANCE = Mappers.getMapper(CUserAddressMapper.class);

    CUserAddressDTO toDTO(CUserAddress entity);

    @Mapping(target = "user",ignore = true)
    CUserAddress toEntity(CUserAddressDTO entity);

    @Mapping(target = "id",ignore = true)
    CUserAddress update(CUserAddressDTO dto,@MappingTarget CUserAddress entity);
}
