package com.eye.eyecouturestore.order.repository;

import com.eye.eyecouturestore.order.model.COrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface COrderRepository extends JpaRepository<COrder,String> {
    @Query("Select o from COrder o LEFT JOIN o.user u where u.id = ?1")
    List<COrder> findAllByUser(String userId);
}
