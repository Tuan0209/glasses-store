package com.eye.eyecouturestore.order.controller;

import com.eye.eyecouturestore.common.helper.ResponseHelper;
import com.eye.eyecouturestore.order.dto.CCartItemIdListDTO;
import com.eye.eyecouturestore.order.dto.CCheckoutDTO;
import com.eye.eyecouturestore.order.dto.COrderDTO;
import com.eye.eyecouturestore.order.service.COrderService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/order")
public class COrderController {

    @Autowired
    private COrderService service;

    @GetMapping("/{user-id}")
    public Object findOrderByUserId(@PathVariable(name="user-id",required=true) String userId) {
        List<COrderDTO> dtos = service.getAllByUserId(userId);
        if(dtos == null)
            return ResponseHelper.getErrorResponse("You dont have an order", HttpStatus.BAD_REQUEST);
        return ResponseHelper.getResponse(dtos, HttpStatus.OK);
    }

    @PostMapping("/checkout/{user-id}")
    public Object getCheckout(@PathVariable(name="user-id") String userId,
                              @RequestBody CCartItemIdListDTO cartItemIdList){
        CCheckoutDTO dto = service.getCheckoutDTO(userId,cartItemIdList.getCartItemIdList());
        return ResponseHelper.getResponse(dto, HttpStatus.OK);
    }

    @PostMapping("/{user-id}")
    public Object createOrder(@PathVariable(name="user-id") String userId,
                              @Valid @RequestBody CCheckoutDTO checkoutDTO){
        COrderDTO dto = service.createOrder(userId,checkoutDTO);
        if(dto == null)
            return ResponseHelper.getErrorResponse("Some thing wrong. Please try again.",HttpStatus.BAD_REQUEST);
        return ResponseHelper.getResponse(dto,HttpStatus.OK);
    }
}
