package com.test.shiro.mapper;

import java.util.List;
import java.util.Set;

import com.test.shiro.pojo.Resource;
import com.test.shiro.pojo.Role;

public interface ResourceMapper {
    int deleteByPrimaryKey(Long id);
    
    int insertSelective(Resource record);

    Resource selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Resource record);
    
    Set<Resource> selectResourceByUserIdLazy(Long userId);
    
    Set<Resource> selectResourceByRoleIdLazy(Long roleId);
    
    List<Resource> selectAll();
    
    List<Resource> selectAllTree();
    
    List<Resource> selectCanMove(List<Resource> reList);
    
    List<Resource> selectAllMenu();
}