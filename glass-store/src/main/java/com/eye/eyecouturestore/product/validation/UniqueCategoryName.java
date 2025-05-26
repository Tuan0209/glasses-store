package com.eye.eyecouturestore.product.validation;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Constraint(validatedBy = UniqueCategoryNameValidator.class)
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface UniqueCategoryName {
    String message() default "Category name is existed";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
