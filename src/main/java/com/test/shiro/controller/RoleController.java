package com.test.shiro.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.test.shiro.pojo.Role;
import com.test.shiro.pojo.RoleResource;
import com.test.shiro.service.IResourceService;
import com.test.shiro.service.IRoleResourceService;
import com.test.shiro.service.IRoleService;
import com.test.shiro.util.ResourceTreeUtil;


@Controller
@RequestMapping("/role")
public class RoleController {
	@Resource(name="roleService")
	private IRoleService roleService;
	
	@Resource(name="roleResourceService")
	private IRoleResourceService roleResourceService;
	
	@Resource(name="resourceService")
	private IResourceService resourceService;
	
	@RequestMapping("/index")
	@RequiresPermissions("role:view")
	public String list(){
		return "role/list1";
	}
	
	@RequestMapping("/tab")
	@ResponseBody
	@RequiresPermissions("role:view")
	public String table(){
		List<Role> roleList = roleService.getRoleList();
		return JSONArray.toJSONString(roleList,SerializerFeature.DisableCircularReferenceDetect);
	}
	
	@RequestMapping(value="/view/{id}",method=RequestMethod.GET)
	@ResponseBody
	@RequiresPermissions("role:view")
	public String view(@PathVariable Long id){
		Role role = roleService.getRoleById(id);
		return JSONArray.toJSONString(role);
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	@ResponseBody
	@RequiresPermissions("role:update")
	public String update(Role role){
		if(roleService.editRole(role)>0){
			return "1";
		}
		return "0";
	}
	
	@RequestMapping(value="/updateResource/{id}",method=RequestMethod.GET)
	@ResponseBody
	@RequiresPermissions("role:update")
	public String updateResource(@PathVariable Long id){
		List<com.test.shiro.pojo.Resource> resourceList = resourceService.getResourceList();
		List<RoleResource> roleResourceList = roleResourceService.getRoleResourceListByRoleId(id);
		List<ResourceTreeUtil> treeList = new ArrayList<ResourceTreeUtil>();
		for(com.test.shiro.pojo.Resource re : resourceList){
			ResourceTreeUtil rtu = new ResourceTreeUtil();
			rtu.setAvailable(re.getAvailable());
			rtu.setId(re.getId());
			rtu.setLevel(re.getLevel());
			rtu.setName(re.getName());
			rtu.setParentId(re.getParentId());
			rtu.setHasNot(false);
			for(RoleResource rr : roleResourceList){
				if(rr.getResourceId().equals(re.getId())){
					rtu.setHasNot(true);
					break;
				}
			}
			treeList.add(rtu);
		}		
		return JSONArray.toJSONString(treeList,SerializerFeature.DisableCircularReferenceDetect);
	}
	
	@RequestMapping(value="/updateResource/{id}",method=RequestMethod.POST)
	@ResponseBody
	@RequiresPermissions("role:update")
	public String updateResource(@PathVariable Long id,String reIds){
		List<Long> resourceIds= new ArrayList<Long>();
		for(String s : reIds.split(",")){
			resourceIds.add(Long.valueOf(s));
		}
		roleResourceService.deleteRoleResourceByRoleId(id);
		if(roleResourceService.addRoleResourceService(id, resourceIds)>0){
			return "1";
		}
		return "0";
	}
	
	@RequestMapping(value="/create",method=RequestMethod.POST)
	@ResponseBody
	@RequiresPermissions("role:create")
	public String addRole(Role role){
		if(roleService.createRole(role)>0){
			return "1";
		}
		return "0";
	}
	
	@RequestMapping("/delete/{id}")
	@ResponseBody
	@RequiresPermissions("role:delete")
	public String deleteRole(@PathVariable Long id){
		roleResourceService.deleteRoleResourceByRoleId(id);
		if(roleService.deleteRole(id)>0){
			return "1";
		}
		return "0";
	}
	
	
}
