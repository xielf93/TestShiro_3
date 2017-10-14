package com.test.shiro.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.shiro.pojo.RoleResource;

public interface RoleResourceMapper {
    int deleteByPrimaryKey(Long id);

    int insertSelective(RoleResource record);

    RoleResource selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RoleResource record);
    
    List<RoleResource> selectByRoleId(Long roleId);
    
    int deleteByRoleId(Long roleId);
    
    int insertCollection(@Param("roleId")Long id,@Param("list")List<Long> reIds);

}