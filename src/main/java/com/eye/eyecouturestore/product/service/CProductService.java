package com.eye.eyecouturestore.product.service;

import com.eye.eyecouturestore.common.dto.CPagingDTO;
import com.eye.eyecouturestore.product.dto.*;

import java.util.List;

public interface CProductService {
    List<CProductDTO> findAll();
    Object findPage(int pageIndex, int pageSize, String orderBy);
    CProductDTO create(CCreateProductDTO dto);
    boolean delete(String productId);
    CProductDTO update(String productId,CProductUpdateDTO updateDTO);
    CProductDTO addImage(String productId, CProductImageDTO imageDto);
    boolean removeImage(String imageId);

    CPagingDTO searching(String keyword, int limit, String orderBy, int pageIndex);

    CPagingDTO searchingFilter(String keyword, int limit, String orderBy, int pageIndex, CProductSearchFilterDTO filter);

    List<CColorDTO> getColors();
    List<CSizeDTO> getSizes();

    CPagingDTO findAllByCate(String cateId, int limit, String orderBy, int page);
}
