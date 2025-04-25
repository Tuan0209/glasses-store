package com.eye.eyecouturestore.role.model;

import com.eye.eyecouturestore.common.model.BaseEntity;
import com.eye.eyecouturestore.user.model.CUser;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import java.util.LinkedHashSet;
import java.util.Set;

@Setter
@Getter
@SuperBuilder
@Entity
@NoArgsConstructor
@Table(name = "c_role")
public class CRole extends BaseEntity {
    @Column(name="code",nullable = false,unique = true)
    private String code;

    @Column(name="description")
    private String description;

    @JsonIgnore
    @ManyToMany(mappedBy = "roles",fetch = FetchType.EAGER)
    private Set<CUser> users = new LinkedHashSet<CUser>();
}
