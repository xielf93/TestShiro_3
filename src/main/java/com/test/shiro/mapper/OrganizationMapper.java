package com.test.shiro.mapper;

import java.util.List;

import com.test.shiro.pojo.Organization;

public interface OrganizationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Organization record);

    int insertSelective(Organization record);

    Organization selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Organization record);

    int updateByPrimaryKey(Organization record);
    
    List<Organization> selectAll();
    
    List<Organization> selectCanMove(List<Organization> orgList);
    
    List<Organization> selectAllOrg();
}