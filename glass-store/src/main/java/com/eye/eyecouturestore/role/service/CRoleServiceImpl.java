package com.eye.eyecouturestore.role.service;

import com.eye.eyecouturestore.role.dto.CRoleDTO;
import com.eye.eyecouturestore.role.mapper.CRoleMapper;
import com.eye.eyecouturestore.role.model.CRole;
import com.eye.eyecouturestore.role.repository.CRoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CRoleServiceImpl implements CRoleService {
    @Autowired
    private CRoleRepository repository;

    @Override
    public List<CRole> findAll() {
        return repository.findAll().stream().toList();
    }

    @Override
    public CRoleDTO save(CRoleDTO dto){
        CRole role = CRoleMapper.INSTANCE.toEntity(dto);
        repository.save(role);
        return CRoleMapper.INSTANCE.toDTO(role);
    }

    @Override
    public boolean removeRole(String roleId) {
        Optional<CRole> roleOpt = repository.findById(roleId);
        if(roleOpt.isPresent()) {
            repository.delete(roleOpt.get());
            return true;
        }
        return false;
    }

    @Override
    public CRoleDTO updateRole(String roleId, CRoleDTO dto) {
        Optional<CRole> roleOpt = repository.findById(roleId);
        if(roleOpt.isEmpty())
            return null;

        CRole role = roleOpt.get();
        if(!dto.getCode().equals(role.getCode())){
            Optional<CRole> roleNameExisted = repository.findByCode(dto.getCode());
            if(roleNameExisted.isPresent())
                return null;
        }
        role.setCode(dto.getCode());
        role.setDescription(dto.getDescription());
        repository.save(role);

        return CRoleMapper.INSTANCE.toDTO(role);
    }

}
