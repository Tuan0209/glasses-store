package com.eye.eyecouturestore.cart.service;

import com.eye.eyecouturestore.cart.dto.CCartItemDTO;
import com.eye.eyecouturestore.cart.dto.CCartItemUpdateDTO;

public interface CCartItemService {
    CCartItemDTO update(String id, CCartItemUpdateDTO dto);
}
