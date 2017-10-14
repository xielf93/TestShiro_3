package com.test.shiro.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.test.shiro.pojo.Organization;
import com.test.shiro.service.IOrganizationService;
import com.test.shiro.util.OrgUtil;

@Controller
@RequestMapping("/organization")
public class OrganizationController {
	@Resource(name="organizationService")
	private IOrganizationService organizationService;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(Model model){
		return "organization/index1";
	}
	
	@RequestMapping(value="/tree",produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public String tree(){
		List<Organization> orgList = organizationService.getOrganizationList();
		System.out.println(JSONArray.toJSONString(orgList,SerializerFeature.DisableCircularReferenceDetect));
		return JSONArray.toJSONString(orgList,SerializerFeature.DisableCircularReferenceDetect);
	}
	
	@RequiresPermissions("organization:view")
	@RequestMapping(value="/view/{id}")
	public String view(@PathVariable Long id,Model model){
		Organization org = organizationService.getOrganizationById(id);
		OrgUtil.orgList = new ArrayList<Organization>();
		OrgUtil.OrgFilter(org);
		OrgUtil.orgList.add(org);
		List<Organization> orgList = organizationService.getOrganizationListCanMove(OrgUtil.orgList);
		model.addAttribute("org", org);
		model.addAttribute("orgList", orgList);		
		return "organization/content";
	}
	
	@RequiresPermissions("organization:update")
	@RequestMapping("/update")
	@ResponseBody
	public String view(Organization org){
		if(organizationService.editOrganization(org)>0){
			return "1";
		}
		return "0";
	}
	
	@RequiresPermissions("organization:create")
	@RequestMapping("/create")
	@ResponseBody
	public String create(Organization org){
		if(organizationService.createOrganization(org)>0){
			return "1";
		}
		return "0";
	}
	
	@RequiresPermissions("organization:delete")
	@RequestMapping("/delete/{orgId}")
	@ResponseBody
	public String delete(@PathVariable Long orgId){
		if(organizationService.deleteOrganization(orgId)>0){
			return "1";
		}
		return "0";
	}
	
}
