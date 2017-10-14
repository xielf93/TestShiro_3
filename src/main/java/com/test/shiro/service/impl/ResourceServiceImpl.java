package com.test.shiro.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.test.shiro.mapper.ResourceMapper;
import com.test.shiro.pojo.Resource;
import com.test.shiro.service.IResourceService;
@Service("resourceService")
public class ResourceServiceImpl implements IResourceService {
	@javax.annotation.Resource(name="resourceMapper")
	private ResourceMapper resourceMapper;
	
	@Override
	public List<Resource> getResourceList() {
		// TODO Auto-generated method stub
		return resourceMapper.selectAll();
	}

	@Override
	public int createResource(Resource resource) {
		// TODO Auto-generated method stub
		return resourceMapper.insertSelective(resource);
	}

	@Override
	public int editResource(Resource resource) {
		// TODO Auto-generated method stub
		return resourceMapper.updateByPrimaryKeySelective(resource);
	}

	@Override
	public Resource getResourceById(Long resourceId) {
		// TODO Auto-generated method stub
		return resourceMapper.selectByPrimaryKey(resourceId);
	}

	@Override
	public int disableResource(Long resourceId) {
		Resource resource  = new Resource();
		resource.setId(resourceId);
		resource.setAvailable(Boolean.FALSE);
		return resourceMapper.updateByPrimaryKeySelective(resource);
	}

	@Override
	public int ableResource(Long resourceId) {
		Resource resource  = new Resource();
		resource.setId(resourceId);
		resource.setAvailable(Boolean.TRUE);
		return resourceMapper.updateByPrimaryKeySelective(resource);
	}

	@Override
	public int deleteResource(Long resourceId) {
		return resourceMapper.deleteByPrimaryKey(resourceId);
	}

	@Override
	public List<Resource> getResourceTree() {
		// TODO Auto-generated method stub
		return resourceMapper.selectAllTree();
	}

	@Override
	public List<Resource> selectCanMove(List<Resource> reList) {
		// TODO Auto-generated method stub
		return resourceMapper.selectCanMove(reList);
	}

	@Override
	public List<Resource> selectAllMenu() {
		// TODO Auto-generated method stub
		return resourceMapper.selectAllMenu();
	}
	
}
