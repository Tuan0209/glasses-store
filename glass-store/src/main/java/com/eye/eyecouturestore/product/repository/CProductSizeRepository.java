package com.eye.eyecouturestore.product.repository;

import com.eye.eyecouturestore.product.model.CProductSize;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CProductSizeRepository extends JpaRepository<CProductSize,String> {
    Optional<CProductSize> findBySize(String size);
}
