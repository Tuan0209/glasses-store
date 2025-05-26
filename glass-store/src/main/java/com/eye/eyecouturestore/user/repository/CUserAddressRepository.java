package com.eye.eyecouturestore.user.repository;

import com.eye.eyecouturestore.user.model.CUserAddress;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CUserAddressRepository  extends JpaRepository<CUserAddress,String> {
}
