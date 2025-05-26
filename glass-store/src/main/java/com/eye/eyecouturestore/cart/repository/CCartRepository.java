package com.eye.eyecouturestore.cart.repository;

import com.eye.eyecouturestore.cart.model.CCart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CCartRepository extends JpaRepository<CCart,String> {
}
