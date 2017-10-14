package com.test.shiro.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.test.shiro.mapper.RoleMapper;
import com.test.shiro.pojo.Role;
import com.test.shiro.service.IRoleService;

@Service("roleService")
public class RoleServiceImpl implements IRoleService{
	@Resource(name="roleMapper")
	private RoleMapper roleMapper;
	
	@Override
	public int createRole(Role role) {
		// TODO Auto-generated method stub
		return roleMapper.insertSelective(role);
	}

	@Override
	public int editRole(Role role) {
		// TODO Auto-generated method stub
		return roleMapper.updateByPrimaryKeySelective(role);
	}

	@Override
	public Role getRoleById(Long id) {
		return roleMapper.selectByPrimaryKey(id);
	}

	@Override
	public int disableRole(Long id) {
		Role role = new Role();
		role.setId(id);
		role.setAvailable(Boolean.FALSE);
		return roleMapper.updateByPrimaryKeySelective(role);
	}

	@Override
	public int ableRole(Long id) {
		Role role = new Role();
		role.setId(id);
		role.setAvailable(Boolean.TRUE);
		return roleMapper.updateByPrimaryKeySelective(role);
	}

	@Override
	public List<Role> getRoleList() {
		// TODO Auto-generated method stub
		return roleMapper.selectAll();
	}

	@Override
	public int deleteRole(Long id) {
		// TODO Auto-generated method stub
		return roleMapper.deleteByPrimaryKey(id);
	}



}
