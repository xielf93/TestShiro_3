package com.test.shiro.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.test.shiro.mapper.RoleResourceMapper;
import com.test.shiro.pojo.RoleResource;
import com.test.shiro.service.IRoleResourceService;
@Service("roleResourceService")
public class RoleResourceServiceImpl implements IRoleResourceService {
	@Resource(name="roleResourceMapper")
	private RoleResourceMapper roleResourceMapper;
	


	@Override
	public int deleteRoleResourceByRoleId(Long roleId) {
		// TODO Auto-generated method stub
		return roleResourceMapper.deleteByRoleId(roleId);
	}

	@Override
	public List<RoleResource> getRoleResourceListByRoleId(Long roleId) {
		// TODO Auto-generated method stub
		return roleResourceMapper.selectByRoleId(roleId);
	}

	@Override
	public int addRoleResourceService(Long id, List<Long> ids) {
		// TODO Auto-generated method stub
		return roleResourceMapper.insertCollection(id, ids);
	}

}
