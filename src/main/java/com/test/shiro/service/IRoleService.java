package com.test.shiro.service;

import java.util.List;

import com.test.shiro.pojo.Role;

public interface IRoleService {
	/**
	 * 创建角色
	 * @param role
	 * @return
	 */
	public int createRole(Role role);
	
	/**
	 * 编辑角色信息
	 * @param role
	 * @return
	 */
	public int editRole(Role role);
	
	/**
	 * 根据编号获取角色信息
	 * @param id
	 * @return
	 */
	public Role getRoleById(Long id);
	
	/**
	 * 停用角色
	 * @param id
	 * @return
	 */
	public int disableRole(Long id);
	
	/**
	 * 启用角色
	 * @param id
	 * @return
	 */
	public int ableRole(Long id);
	
	/**
	 * 获取角色列表(非树形)
	 * @return
	 */
	public List<Role> getRoleList();
	
	/**
	 * 删除角色
	 * @param id
	 * @return
	 */
	public int deleteRole(Long id);
	

	
	
}
