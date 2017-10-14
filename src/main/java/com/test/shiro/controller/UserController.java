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
import com.fasterxml.jackson.databind.JsonNode;
import com.test.shiro.pojo.Role;
import com.test.shiro.pojo.User;
import com.test.shiro.pojo.Organization;
import com.test.shiro.pojo.UserRole;
import com.test.shiro.service.IOrganizationService;
import com.test.shiro.service.IRoleService;
import com.test.shiro.service.IUserRoleService;
import com.test.shiro.service.IUserService;
import com.test.shiro.util.RoleListUtil;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource(name="userService")
	private IUserService userService;
	
	@Resource(name="organizationService")
	private IOrganizationService organizationService;
	
	@Resource(name="userRoleService")
	private IUserRoleService userRoleService;
	
	@Resource(name="roleService")
	private IRoleService roleService;
	
	@RequestMapping("/index")
	@RequiresPermissions("user:view")
	public String list(){
		return "user/list1";
	}
	
	@RequestMapping("/tab")
	@ResponseBody
	@RequiresPermissions("user:view")
	public String table(){
		List<User> userList = userService.getUserList();
		return JSONArray.toJSONStringWithDateFormat(userList,"yyyy-MM-dd HH:mm:ss",SerializerFeature.DisableCircularReferenceDetect);
	}
	
	@RequestMapping("/view/{id}")
	@ResponseBody
	@RequiresPermissions("user:view")
	public String view(@PathVariable Long id){
		User user = userService.getUserById(id);
		List<Organization> orgList = organizationService.getOrgList();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("user", user);
		map.put("org", orgList);
		return JSONArray.toJSONString(map,SerializerFeature.DisableCircularReferenceDetect);
	}
	
	@RequestMapping("/update")
	@ResponseBody
	@RequiresPermissions("user:update")
	public String update(User user){
		if(userService.editUser(user)>0){
			return "1";
		}
		return "0";
	}
	
	@RequestMapping(value="/updateRole/{id}",method=RequestMethod.GET)
	@ResponseBody
	@RequiresPermissions("user:update")
	public String userRole(@PathVariable Long id){
		List<UserRole> userRoleList = userRoleService.getUserRoleListByUserId(id);
		List<Role> roleList = roleService.getRoleList();
		List<RoleListUtil> showList = new ArrayList<RoleListUtil>();
		for(Role r : roleList){
			RoleListUtil ru = new RoleListUtil();
			ru.setAvailable(r.getAvailable());
			ru.setHasNot(false);
			ru.setId(r.getId());
			ru.setName(r.getRole());
			for(UserRole ur : userRoleList){
				if(r.getId().equals(ur.getRoleId())){
					ru.setHasNot(true);
					break;
				}
			}
			showList.add(ru);				
		}
		return JSONArray.toJSONString(showList);
	}
	
	@RequestMapping(value="/updateRole/{id}",method=RequestMethod.POST)
	@ResponseBody
	@RequiresPermissions("user:update")
	public String userRole(@PathVariable Long id,String ids){
		List<Long> roleIds= new ArrayList<Long>();
		for(String s : ids.split(",")){
			roleIds.add(Long.valueOf(s));
		}
		userRoleService.deleteAllByUserId(id);
		if(userRoleService.insertUserRole(id, roleIds)>0){
			return "1";
		}
		return "0";
	}
	
	@RequestMapping("/delete/{id}")
	@ResponseBody
	@RequiresPermissions("user:delete")
	public String delete(@PathVariable Long id){
		userRoleService.deleteAllByUserId(id);
		if(userService.delete(id)>0){
			return "1";
		}
		return "0";
	}
	
	@RequestMapping(value="/create",method=RequestMethod.GET)
	@ResponseBody
	@RequiresPermissions("user:create")
	public String create(){
		List<Organization> orgList = organizationService.getOrgList();
		return JSONArray.toJSONString(orgList,SerializerFeature.DisableCircularReferenceDetect);
	}
	
	@RequestMapping(value="/create",method=RequestMethod.POST)
	@ResponseBody
	@RequiresPermissions("user:create")
	public String create(User user){
		if(userService.register(user)>0){
			return "1";
		}
		return "0";
	}

}
