package com.eye.eyecouturestore.security.service;

import com.eye.eyecouturestore.security.dto.LoginDTO;
import com.eye.eyecouturestore.security.dto.SignUpDTO;
import com.eye.eyecouturestore.user.dto.CUserDetailsWithTokenDTO;
import jakarta.servlet.http.HttpServletResponse;

public interface AuthService {
    CUserDetailsWithTokenDTO login(LoginDTO dto, HttpServletResponse response);

    boolean signup(SignUpDTO dto);

    void logout(String refreshToken);
}
