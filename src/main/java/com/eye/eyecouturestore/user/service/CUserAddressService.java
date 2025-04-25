package com.eye.eyecouturestore.user.service;

import com.eye.eyecouturestore.user.dto.CUserAddressDTO;

import java.util.List;

public interface CUserAddressService {
    CUserAddressDTO update(String addressId, CUserAddressDTO dto);
    List<CUserAddressDTO> createAddressByUserId(String userId, CUserAddressDTO dto);

    List<CUserAddressDTO> setDefaultById(String userId,String addressId);
    boolean deleteById(String addressId);
}
