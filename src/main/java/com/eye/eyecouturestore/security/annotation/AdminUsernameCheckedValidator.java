package com.eye.eyecouturestore.security.annotation;

import com.eye.eyecouturestore.role.model.CRole;
import com.eye.eyecouturestore.user.model.CUser;
import com.eye.eyecouturestore.user.repository.CUserRepository;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Optional;

public class AdminUsernameCheckedValidator  implements ConstraintValidator<AdminUsernameChecked, String> {
    @Autowired
    private CUserRepository userRepository;
    private String message;

    @Override
    public void initialize(AdminUsernameChecked usernameChecked) {
        message = usernameChecked.message();
    }

    @Override
    public boolean isValid(String username, ConstraintValidatorContext constraintValidatorContext) {
        Optional<CUser> userOptional = userRepository.findByUsername(username);
        if(userOptional.isEmpty())
            return false;

        CUser user = userOptional.get();
        CRole userRole = user.getRoles().stream().filter(role -> role.getCode().equals("ROLE_ADMIN")).findFirst().orElse(null);
        if(userRole != null)
            return true;

        return false;
    }
}
