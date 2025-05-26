package com.eye.eyecouturestore.security;

import com.eye.eyecouturestore.security.model.CRefreshToken;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CRefreshTokenRepository extends JpaRepository<CRefreshToken,String> {
    Optional<CRefreshToken> findByRefreshToken(String refreshTokenString);
}
