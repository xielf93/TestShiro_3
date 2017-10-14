package com.test.shiro.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.test.shiro.service.IResourceService;
import com.test.shiro.util.ResourceListUtil;
import com.test.shiro.util.ResourceUtil;

@Controller
@RequestMapping("/resource")
public class ResourceController {
	@Resource(name="resourceService")
	private IResourceService resourceService;
	
	@RequestMapping("/index")
	@RequiresPermissions("resource:view")
	public String list(){
		return "resource/list1";
	}
	
	@RequestMapping("/tab")
	@ResponseBody
	@RequiresPermissions("resource:view")
	public String table(){
		List<com.test.shiro.pojo.Resource> resourceList = resourceService.getResourceList();
		List<ResourceListUtil> showList = new ArrayList<ResourceListUtil>();
		for (com.test.shiro.pojo.Resource r : resourceList) {
			ResourceListUtil ru = new ResourceListUtil();
			ru.setId(r.getId());
			ru.setName(r.getName());
			ru.setParentId(r.getParentId());
			ru.setPermission(r.getPermission());
			ru.setAvailable(r.getAvailable());
			ru.setLevel(r.getLevel());
			ru.setType(r.getType());
			ru.setUrl(r.getUrl());
			showList.add(ru);
		}
		return JSONArray.toJSONString(showList,SerializerFeature.DisableCircularReferenceDetect);
	}
	
	@RequestMapping(value="/parentResource/{id}")
	@ResponseBody
	public String parentResource(@PathVariable Long id){
		com.test.shiro.pojo.Resource resource = resourceService.getResourceById(id);
		ResourceUtil.reList = new ArrayList<com.test.shiro.pojo.Resource>();
		ResourceUtil.ResourceFilter(resource);
		ResourceUtil.reList.add(resource);
		List<com.test.shiro.pojo.Resource> reList = resourceService.selectCanMove(ResourceUtil.reList);		
		return JSONArray.toJSONString(reList,SerializerFeature.DisableCircularReferenceDetect);
	}
	
	@RequestMapping("/update")
	@ResponseBody
	@RequiresPermissions("resource:update")
	public String editResource(com.test.shiro.pojo.Resource resource){
		if(resourceService.editResource(resource)>0){
			return "1";
		}
		return "0";
	}
	
	@RequestMapping(value="/create",method=RequestMethod.GET)
	@ResponseBody
	@RequiresPermissions("resource:create")
	public String createResource(){
		List<com.test.shiro.pojo.Resource> reList = resourceService.getResourceList();
		return JSONArray.toJSONString(reList,SerializerFeature.DisableCircularReferenceDetect);
	}
	
	
	@RequestMapping(value="/create",method=RequestMethod.POST)
	@ResponseBody
	@RequiresPermissions("resource:create")
	public String createResource(com.test.shiro.pojo.Resource resource){
		com.test.shiro.pojo.Resource pResource = resourceService.getResourceById(resource.getParentId());
		resource.setLevel(String.valueOf((Integer.valueOf(pResource.getLevel())+1)));
		if(resourceService.createResource(resource)>0){
			return "1";
		}
		return "0";
	}
	
	
}
