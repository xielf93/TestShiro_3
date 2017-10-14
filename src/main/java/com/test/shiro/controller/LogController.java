package com.test.shiro.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.test.shiro.pojo.Log;
import com.test.shiro.service.ILogService;

@Controller
@RequestMapping("/log")
public class LogController {
	@Resource(name="logService")
	private ILogService logService;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	@RequiresPermissions("log:view")
	public String index(Model model){
		return "log/list";
	}
	
	@RequestMapping("/tab")
	@ResponseBody
	@RequiresPermissions("log:view")
	public String tab(){
		List<Log> logList = logService.selectAll();
		return JSONArray.toJSONStringWithDateFormat(logList,"yyyy-MM-dd HH:mm:ss",SerializerFeature.DisableCircularReferenceDetect);
	}
}
