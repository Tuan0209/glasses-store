package com.eye.eyecouturestore.product.repository;

import com.eye.eyecouturestore.product.model.CCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CCategoryRepository extends JpaRepository<CCategory,String> {
    Optional<CCategory> findByName(String name);
}
