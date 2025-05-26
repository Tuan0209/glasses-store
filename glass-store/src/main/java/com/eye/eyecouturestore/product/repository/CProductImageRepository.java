package com.eye.eyecouturestore.product.repository;

import com.eye.eyecouturestore.product.model.CProductImage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CProductImageRepository extends JpaRepository<CProductImage,String> {
}
