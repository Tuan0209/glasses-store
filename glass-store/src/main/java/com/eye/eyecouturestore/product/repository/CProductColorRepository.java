package com.eye.eyecouturestore.product.repository;

import com.eye.eyecouturestore.product.model.CProductColor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CProductColorRepository extends JpaRepository<CProductColor,String> {
    Optional<CProductColor> findByColor(String color);
}
