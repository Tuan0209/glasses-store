package com.eye.eyecouturestore.product.validation;

import com.eye.eyecouturestore.product.model.CProduct;
import com.eye.eyecouturestore.product.repository.CProductRepository;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Optional;

public class UniqueProductNameValidator implements ConstraintValidator<UniqueProductName, String> {
    @Autowired
    private CProductRepository repository;

    private String message;

    @Override
    public void initialize(UniqueProductName uniqueName) {
        message = uniqueName.message();
    }

    @Override
    public boolean isValid(String name, ConstraintValidatorContext context) {
        Optional<CProduct> productOpt = repository.findByName(name);
        if(productOpt.isEmpty())
            return true;
        context.buildConstraintViolationWithTemplate(message)
                .addConstraintViolation()
                .disableDefaultConstraintViolation();
        return false;
    }
}
