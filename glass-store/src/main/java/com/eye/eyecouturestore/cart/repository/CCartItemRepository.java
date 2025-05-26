package com.eye.eyecouturestore.cart.repository;

import com.eye.eyecouturestore.cart.model.CCartItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CCartItemRepository extends JpaRepository<CCartItem,String> {
}
