package com.eye.eyecouturestore.email.service;

import com.eye.eyecouturestore.order.dto.COrderDTO;
import com.eye.eyecouturestore.order.dto.COrderDetailsDTO;
import jakarta.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import java.util.Map;

@Service
public class CEmailServiceImpl implements CEmailService {
    @Autowired
    private JavaMailSender emailSender;

    @Autowired
    private TemplateEngine templateEngine;

    @Value("${spring.mail.username}")
    private String fromEmail;

    public void sendOrderInfoEmail(String name, String to, COrderDTO order) throws RuntimeException {
        try {
            Context context = new Context();
            COrderDetailsDTO orderDetailsDTO = order.getOrderDetails();
            context.setVariables(Map.of(
                    "displayName", order.getUser().getDisplayName(),
                    "address", orderDetailsDTO.getAddress(),
                    "orderId", order.getId(),
                    "phone", orderDetailsDTO.getPhone(),
                    "orderItems", orderDetailsDTO.getOrderItems(),
                    "finalTotal", orderDetailsDTO.getFinalTotal(),
                    "orderDate", orderDetailsDTO.getOrderDate()
            ));

            String text = templateEngine.process("emailOrder", context);
            MimeMessage message = emailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
            helper.setPriority(1);
            helper.setSubject("EyeStore");
            helper.setFrom(fromEmail);
            helper.setTo(to);
            helper.setText(text, true);

            emailSender.send(message);
        } catch (Exception exception) {
            System.out.println(exception.getMessage());
            //throw new RuntimeException(exception.getMessage());
        }
    }
}
