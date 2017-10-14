package com.test.shiro.service;

import java.util.List;
import com.test.shiro.pojo.Organization;

public interface IOrganizationService {
	/**
	 * 获取组织机构列表(树形)
	 * @return
	 */
	public List<Organization> getOrganizationList();
	
	/**
	 * 获取组织机构列表(非树形)
	 * @return
	 */
	public List<Organization> getOrgList();
	
	/**
	 * 获取除自己以外的组织机构列表
	 * @return
	 */
	public List<Organization> getOrganizationListCanMove(List<Organization> orgList);
	
	/**
	 * 根据编号获取组织机构信息
	 * @param organizationId
	 * @return
	 */
	public Organization getOrganizationById(Long organizationId);
	
	/**
	 * 创建组织机构
	 * @param organization
	 * @return
	 */
	public int createOrganization(Organization organization);
	
	/**
	 * 编辑组织机构信息
	 * @param organization
	 * @return
	 */
	public int editOrganization(Organization organization);
	
	/**
	 * 停用组织机构
	 * @param organizationId
	 * @return
	 */
	public int disableOrganization(Long organizationId);
	
	/**
	 * 启用组织机构
	 * @param organizationId
	 * @return
	 */
	public int ableOrganization(Long organizationId);
	
	/**
	 * 删除组织机构
	 * @param organizationId
	 * @return
	 */
	public int deleteOrganization(Long organizationId);
	
}	
