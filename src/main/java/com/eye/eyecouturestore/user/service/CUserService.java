package com.eye.eyecouturestore.user.service;

import com.eye.eyecouturestore.common.dto.CPagingDTO;
import com.eye.eyecouturestore.user.dto.CUserDetailsAndRolesDTO;
import com.eye.eyecouturestore.user.dto.CUserDetailsDTO;
import com.eye.eyecouturestore.user.dto.CUserDetailsUpdateDTO;

public interface CUserService {

    CPagingDTO findAll(int page, int limit, String orderBy);

    CUserDetailsDTO getUserDetail(String userId);
    CUserDetailsDTO getUserDetailsByUsername(String username);

    CUserDetailsDTO updateUserDetails(String userId, CUserDetailsUpdateDTO dto);

    CUserDetailsAndRolesDTO updateUser(String userId, CUserDetailsAndRolesDTO dto);
}
