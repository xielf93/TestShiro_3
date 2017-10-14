package com.test.shiro.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.shiro.pojo.UserRole;

public interface UserRoleMapper {
    int deleteByPrimaryKey(Long id);

    int insertSelective(UserRole record);

    UserRole selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UserRole record);
    
    int insertCollection(List<UserRole> userRoleList);
    
    int deleteAllByUserId(Long userId);
    
    int insertUserRole(@Param("id")Long id,@Param("list")List<Long> ids);
    
    List<UserRole> selectAllByUserId(Long userId);
}