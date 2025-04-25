package com.eye.eyecouturestore.cart.service;

import com.eye.eyecouturestore.cart.dto.CAddProductToCartDTO;
import com.eye.eyecouturestore.cart.dto.CCartDTO;

public interface CCartService {
    CCartDTO findCartById(String cartId);
    CCartDTO addProductToCart(CAddProductToCartDTO dto);
    boolean removeProduct(String cartId,String cartItemId);
}
