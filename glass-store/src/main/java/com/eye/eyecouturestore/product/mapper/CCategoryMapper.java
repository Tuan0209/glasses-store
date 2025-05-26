package com.eye.eyecouturestore.product.mapper;

import com.eye.eyecouturestore.product.dto.CCategoryDTO;
import com.eye.eyecouturestore.product.model.CCategory;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.factory.Mappers;

@Mapper
public interface CCategoryMapper {
    CCategoryMapper INSTANCE = Mappers.getMapper(CCategoryMapper.class);
    CCategoryDTO toDto(CCategory entity);
    CCategory toEntity(CCategoryDTO dto);
    @Mapping(target = "id",ignore=true)
    CCategory updateEntityFromDto(CCategoryDTO dto,@MappingTarget CCategory product);
}
