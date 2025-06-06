package com.eye.eyecouturestore.user.annotation;

import com.eye.eyecouturestore.user.model.CUser;
import com.eye.eyecouturestore.user.repository.CUserRepository;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Optional;

public class UniqueEmailValidator  implements ConstraintValidator<UniqueEmail, String> {
    private String message;

    @Autowired
    private CUserRepository repository;

    @Override
    public void initialize(UniqueEmail uniqueEmail) {
        message = uniqueEmail.message();
    }

    @Override
    public boolean isValid(String email, ConstraintValidatorContext context) {
        Optional<CUser> userOpt = repository.findByEmail(email);
        if (userOpt.isEmpty())
            return true;

        context.buildConstraintViolationWithTemplate(message).addConstraintViolation()
                .disableDefaultConstraintViolation();
        return false;
    }
}
