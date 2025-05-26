package com.eye.eyecouturestore.order.mapper;

import com.eye.eyecouturestore.order.dto.COrderDetailsDTO;
import com.eye.eyecouturestore.order.model.COrderDetails;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

@Mapper
public interface COrderDetailsMapper {
    COrderDetailsMapper INSTANCE = Mappers.getMapper(COrderDetailsMapper.class);
    @Mapping(target = "orderItems",ignore = true)
    COrderDetailsDTO toDTO(COrderDetails entity);
}
