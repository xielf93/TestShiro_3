package com.test.shiro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.test.shiro.bind.annotation.CurrentUser;
import com.test.shiro.exception.CustomException;
import com.test.shiro.pojo.User;
import com.test.shiro.service.IResourceService;
import com.test.shiro.service.IUserService;
import com.test.shiro.util.MenuUtil;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

/**
 * <p>User: Zhang Kaitao
 * <p>Date: 14-2-14
 * <p>Version: 1.0
 */
@Controller
public class IndexController {
	@Resource(name="userService")
	private IUserService userService;

    @RequestMapping("/")
    public String index(@CurrentUser User loginUser, Model model) throws CustomException {   	
        Set<com.test.shiro.pojo.Resource> menus = new HashSet<com.test.shiro.pojo.Resource>();        
        try {
			User user = new User();
			user.setId(loginUser.getId());
			user.setUsername(loginUser.getUsername());
			user.setLastLoginTime(new Date());
			userService.editUser(user);
			for (com.test.shiro.pojo.Resource resource : loginUser.getResourceList()) {
				if(resource.getType().equals("menu")){
					menus.add(resource);
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new CustomException("未知错误!");
		}
        model.addAttribute("menus", menus);
        return "index";
    }

    @RequestMapping("/welcome")
    public String welcome() {
        return "welcome";
    }
    
    @RequestMapping("/menu")
    @ResponseBody
    public String index2(@CurrentUser User loginUser)throws CustomException{
    	 List<MenuUtil> menuList = new ArrayList<MenuUtil>(); 
         try {
 			for (com.test.shiro.pojo.Resource resource : loginUser.getResourceList()) {
 				if(resource.getParentId()==null){
 					menuList.add(buildNode(resource,loginUser.getResourceList()));
 				}
 				
 			}
 		} catch (Exception e) {
 			// TODO Auto-generated catch block
 			throw new CustomException("未知错误!");
 		}
         
         return JSONArray.toJSONString(menuList,SerializerFeature.DisableCircularReferenceDetect);
    }
    
    public MenuUtil buildNode(com.test.shiro.pojo.Resource resource,Set<com.test.shiro.pojo.Resource> rList){
    	MenuUtil mu = new MenuUtil();
		mu.setId(resource.getId());
		mu.setText(resource.getName());
		mu.setUrl(resource.getUrl());
		mu.setIcon("icon-cog");
		if(resource.getChildren()!=null && resource.getChildren().size()>0){
			List<MenuUtil> muList = new ArrayList<MenuUtil>();
			for (com.test.shiro.pojo.Resource re : resource.getChildren()) {
				if(rList.contains(re)){
					MenuUtil m = new MenuUtil();
					m.setId(re.getId());
					m.setText(re.getName());
					m.setUrl(re.getUrl());
					m.setIcon("icon-glass");				
					muList.add(m);
					buildNode(re,rList);
				}
			}
			mu.setMenus(muList);
		}
		return mu;
    }


}
