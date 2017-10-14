package com.test.shiro.service;

import java.util.List;
import com.test.shiro.pojo.Resource;

public interface IResourceService {
	/**
	 * 获取资源集合
	 * @return
	 */
	public List<Resource> getResourceList();
	
	/**
	 * 创建资源
	 * @param resource
	 * @return
	 */
	public int createResource(Resource resource);
	
	/**
	 * 编辑资源信息
	 * @param resource
	 * @return
	 */
	public int editResource(Resource resource);
	
	/**
	 * 获取某一资源的信息
	 * @param resourceId
	 * @return
	 */
	public Resource getResourceById(Long resourceId);
	
	/**
	 * 停用某一资源
	 * @param resourceId
	 * @return
	 */
	public int disableResource(Long resourceId);
	
	/**
	 * 启用某一资源
	 * @param resourceId
	 * @return
	 */
	public int ableResource(Long resourceId);
	
	/**
	 * 删除某一资源
	 * @param resourceId
	 * @return
	 */
	public int deleteResource(Long resourceId);
	
	public List<Resource> getResourceTree();
	
	public List<Resource> selectCanMove(List<Resource> reList);
	
	public List<Resource> selectAllMenu();

}
