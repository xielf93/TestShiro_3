package com.test.shiro.mapper;

import java.util.List;
import java.util.Set;

import com.test.shiro.pojo.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(Long id);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Role record);
    
    Set<Role> selectRoleLazy(Long userId);
    
    List<Role> selectAll();
    
    
}