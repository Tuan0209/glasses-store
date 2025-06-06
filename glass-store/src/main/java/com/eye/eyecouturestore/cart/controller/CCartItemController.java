package com.eye.eyecouturestore.cart.controller;

import com.eye.eyecouturestore.cart.dto.CCartItemDTO;
import com.eye.eyecouturestore.cart.dto.CCartItemUpdateDTO;
import com.eye.eyecouturestore.cart.service.CCartItemService;
import com.eye.eyecouturestore.common.helper.ResponseHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/cart/cart-item")
public class CCartItemController {
    @Autowired
    private CCartItemService service;

    @PutMapping("/update/{cart-item-id}")
    public Object update(@PathVariable(name="cart-item-id") String cartItemId,
                         @RequestBody CCartItemUpdateDTO dto) {

        CCartItemDTO res = service.update(cartItemId,dto);

        if(res == null)
            return ResponseHelper.getErrorResponse("Cart item is not existed.", HttpStatus.BAD_REQUEST);

        return ResponseHelper.getResponse(res, HttpStatus.OK);
    }

}
