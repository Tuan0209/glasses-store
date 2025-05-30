package com.eye.eyecouturestore.role.validation;

import com.eye.eyecouturestore.role.model.CRole;
import com.eye.eyecouturestore.role.repository.CRoleRepository;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Optional;

public class UniqueCodeValidator implements ConstraintValidator<UniqueCode, String> {

    private String message;

    @Autowired
    private CRoleRepository repository;

    @Override
    public void initialize(UniqueCode uniqueName) {
        message = uniqueName.message();
    }
    @Override
    public boolean isValid(String roleCode, ConstraintValidatorContext context) {
        Optional<CRole> roleOpt = repository.findByCode(roleCode);
        if(roleOpt.isEmpty())
            return true;
        context.buildConstraintViolationWithTemplate(message)
                .addConstraintViolation()
                .disableDefaultConstraintViolation();
        return false;
    }
}
