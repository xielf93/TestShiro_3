package com.test.shiro.service;

import java.util.List;

import com.test.shiro.pojo.UserRole;

public interface IUserRoleService {
	/**
	 * 添加用户角色映射
	 * @param userRoleList
	 * @return
	 */
	public int addUserRole(List<UserRole> userRoleList);
	
	/**
	 * 获取用户的所有角色映射
	 * @param userId
	 * @return
	 */
	public List<UserRole> getUserRoleListByUserId(Long userId);
	
	/**
	 * 移除某用户的所有角色映射
	 * @param userId
	 * @return
	 */
	public int deleteAllByUserId(Long userId);
	
	public int insertUserRole(Long id,List<Long> ids);
	
}
