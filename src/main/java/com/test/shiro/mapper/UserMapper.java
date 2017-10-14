package com.test.shiro.mapper;

import java.util.List;
import java.util.Set;

import com.test.shiro.pojo.User;

public interface UserMapper {
    int deleteByPrimaryKey(Long id);

    int insertSelective(User record);

    User selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(User record);
    
    Set<User> selectUserLazy(Long roleId);
    
    User selectUserByName(String username);
    
    List<User> selectAllUser();
    
    Set<User> selectUserByOrgIdLazy(Long orgId);
}