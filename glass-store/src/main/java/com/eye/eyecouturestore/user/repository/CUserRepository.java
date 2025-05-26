package com.eye.eyecouturestore.user.repository;

import com.eye.eyecouturestore.user.model.CUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CUserRepository extends JpaRepository<CUser,String> {
    Optional<CUser> findByUsername(String username);

    Optional<CUser> findByEmail(String email);

    Optional<CUser> findByPhone(String phone);
}
