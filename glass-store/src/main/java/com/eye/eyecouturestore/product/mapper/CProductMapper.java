package com.eye.eyecouturestore.product.mapper;

import com.eye.eyecouturestore.product.dto.*;
import com.eye.eyecouturestore.product.model.CProduct;
import com.eye.eyecouturestore.product.model.CProductColor;
import com.eye.eyecouturestore.product.model.CProductSize;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

@Mapper
public interface CProductMapper {
    CProductMapper INSTANCE = Mappers.getMapper(CProductMapper.class);

    CProductDTO toDto(CProduct entity);

    /*3 field này map bằng tay*/
    @Mappings({
            @Mapping(target = "images", ignore = true),
            @Mapping(target = "colors", ignore = true),
            @Mapping(target = "sizes", ignore = true)
    })
    CProduct toEntity(CProductDTO dto);
    @Mappings({
            @Mapping(target = "images", ignore = true),
            @Mapping(target = "colors", ignore = true),
            @Mapping(target = "sizes", ignore = true),
            @Mapping(target = "categories",ignore = true)
    })
    CProduct toEntity(CCreateProductDTO dto);

    @Mappings({
            @Mapping(target = "images", ignore = true),
            @Mapping(target = "id", ignore = true),
            @Mapping(target = "colors", ignore = true),
            @Mapping(target = "sizes", ignore = true),
            @Mapping(target = "categories", ignore = true)
    })
    CProduct updateEntityFromDto(CProductUpdateDTO dto, @MappingTarget CProduct product);

    CColorDTO colorToColorDTO(CProductColor color);
    CSizeDTO sizeToSizeDTO(CProductSize color);
}
