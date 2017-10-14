package com.test.shiro.service;

import java.util.List;
import com.test.shiro.pojo.RoleResource;

public interface IRoleResourceService {
	/**
	 * 添加角色资源映射
	 * @param roleResourceList
	 * @return
	 */
	public int addRoleResourceService(Long id,List<Long> ids);
	
	/**
	 * 删除某角色的所有资源映射
	 * @param roleId
	 * @return
	 */
	public int deleteRoleResourceByRoleId(Long roleId);
	
	/**
	 * 获取某角色的所有资源映射
	 * @param roleId
	 * @return
	 */
	public List<RoleResource> getRoleResourceListByRoleId(Long roleId);
}
