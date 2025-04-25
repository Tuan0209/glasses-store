package com.eye.eyecouturestore.email.service;

import com.eye.eyecouturestore.order.dto.COrderDTO;

public interface CEmailService {

    void sendOrderInfoEmail(String name, String to, COrderDTO order) throws RuntimeException;
}
