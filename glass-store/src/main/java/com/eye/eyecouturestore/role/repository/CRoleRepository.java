package com.eye.eyecouturestore.role.repository;

import com.eye.eyecouturestore.role.model.CRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CRoleRepository extends JpaRepository<CRole, String> {
    Optional<CRole> findByCode(String code);
}
