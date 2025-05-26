package com.eye.eyecouturestore.order.mapper;

import com.eye.eyecouturestore.order.dto.COrderDetailsItemDTO;
import com.eye.eyecouturestore.order.model.COrderDetailsItem;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface COrderDetailsItemMapper {
    COrderDetailsItemMapper INSTANCE = Mappers.getMapper(COrderDetailsItemMapper.class);

    COrderDetailsItemDTO toDTO(COrderDetailsItem entity);
}
