package com.test.shiro.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.test.shiro.mapper.UserRoleMapper;
import com.test.shiro.pojo.UserRole;
import com.test.shiro.service.IUserRoleService;

@Service("userRoleService")
public class UserRoleServiceImpl implements IUserRoleService {
	
	@Resource(name="userRoleMapper")
	private UserRoleMapper userRoleMapper;
	
	@Override
	public int addUserRole(List<UserRole> userRoleList) {
		// TODO Auto-generated method stub
		return userRoleMapper.insertCollection(userRoleList);
	}

	@Override
	public List<UserRole> getUserRoleListByUserId(Long userId) {
		// TODO Auto-generated method stub
		return userRoleMapper.selectAllByUserId(userId);
	}

	@Override
	public int deleteAllByUserId(Long userId) {
		// TODO Auto-generated method stub
		return userRoleMapper.deleteAllByUserId(userId);
	}

	@Override
	public int insertUserRole(Long id, List<Long> ids) {
		// TODO Auto-generated method stub
		return userRoleMapper.insertUserRole(id, ids);
	}

}
