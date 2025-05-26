package com.eye.eyecouturestore.security.service;

import com.eye.eyecouturestore.role.model.CRole;
import com.eye.eyecouturestore.security.CRefreshTokenRepository;
import com.eye.eyecouturestore.security.jwt.JwtHelper;
import com.eye.eyecouturestore.security.model.CRefreshToken;
import com.eye.eyecouturestore.user.model.CUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Optional;
import java.util.Set;

@Service
public class CRefreshTokenServiceImpl implements CRefreshTokenService{
    @Autowired
    private CRefreshTokenRepository repository;

    @Autowired
    private JwtHelper jwtHelper;

    @Override
    public String getToken(String refreshTokenString) {
        Optional<CRefreshToken> refreshTokenOpt = repository.findByRefreshToken(refreshTokenString);

        if(refreshTokenOpt.isEmpty())
            return null;

        CRefreshToken refreshToken = refreshTokenOpt.get();

        if(!jwtHelper.validationJwt(refreshToken.getRefreshToken())){
            repository.delete(refreshToken);
            return null;
        }
        CUser user = refreshToken.getUser();
        String token = null;
        Set<CRole> roles = user.getRoles();

        if(roles != null){
            Collection<SimpleGrantedAuthority> authorities = new ArrayList<>();
            roles.stream().forEach(role -> authorities.add(new SimpleGrantedAuthority(role.getCode())));
            token = jwtHelper.generateTokenWithUsernameAndRoles(user.getUsername(),authorities);
        }
        return token;
    }

    public void delete(String refreshToken) {
        Optional<CRefreshToken> refreshTokenOpt = repository.findByRefreshToken(refreshToken);
        if(refreshTokenOpt.isEmpty())
            return;
        try{
            repository.delete(refreshTokenOpt.get());
        }catch(Exception e){
            return;
        }
    }
}
