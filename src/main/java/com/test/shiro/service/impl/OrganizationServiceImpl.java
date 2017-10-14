package com.test.shiro.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.test.shiro.mapper.OrganizationMapper;
import com.test.shiro.pojo.Organization;
import com.test.shiro.service.IOrganizationService;
@Service("organizationService")
public class OrganizationServiceImpl implements IOrganizationService {
	@Resource(name="organizationMapper")
	private OrganizationMapper organizationMapper;
	
	@Override
	public List<Organization> getOrganizationList() {
		// TODO Auto-generated method stub
		return organizationMapper.selectAll();
	}

	@Override
	public Organization getOrganizationById(Long organizationId) {
		// TODO Auto-generated method stub
		return organizationMapper.selectByPrimaryKey(organizationId);
	}

	@Override
	public int createOrganization(Organization organization) {
		// TODO Auto-generated method stub
		return organizationMapper.insertSelective(organization);
	}

	@Override
	public int editOrganization(Organization organization) {
		// TODO Auto-generated method stub
		return organizationMapper.updateByPrimaryKeySelective(organization);
	}

	@Override
	public int disableOrganization(Long organizationId) {
		Organization org = new Organization();
		org.setId(organizationId);
		org.setAvailable(Boolean.FALSE);
		return organizationMapper.updateByPrimaryKeySelective(org);
	}

	@Override
	public int ableOrganization(Long organizationId) {
		Organization org = new Organization();
		org.setId(organizationId);
		org.setAvailable(Boolean.TRUE);
		return organizationMapper.updateByPrimaryKeySelective(org);
	}

	@Override
	public int deleteOrganization(Long organizationId) {
		// TODO Auto-generated method stub
		return organizationMapper.deleteByPrimaryKey(organizationId);
	}


	@Override
	public List<Organization> getOrganizationListCanMove(
			List<Organization> orgList) {
		return organizationMapper.selectCanMove(orgList);
	}

	@Override
	public List<Organization> getOrgList() {
		// TODO Auto-generated method stub
		return organizationMapper.selectAllOrg();
	}

}
