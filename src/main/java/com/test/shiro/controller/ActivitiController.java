package com.test.shiro.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.activiti.engine.FormService;
import org.activiti.engine.HistoryService;
import org.activiti.engine.IdentityService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.test.shiro.bind.annotation.CurrentUser;
import com.test.shiro.pojo.LeaveApply;
import com.test.shiro.pojo.Role;
import com.test.shiro.pojo.User;
import com.test.shiro.service.ILeaveService;
import com.test.shiro.util.HistoryProcess;
import com.test.shiro.util.LeaveTask;

@Controller
@RequestMapping("/oa")
public class ActivitiController {
	@Autowired
	RepositoryService rep;
	@Autowired
	RuntimeService runservice;
	@Autowired
	FormService formservice;
	@Autowired
	IdentityService identityservice;
	@Autowired
	ILeaveService leaveservice;
	@Autowired
	TaskService taskservice;
	@Autowired
	HistoryService histiryservice;

	@RequestMapping("/apply")
	public String applyindex() {
		return "oa/leaveapply";
	}

	/**
	 * 申请
	 * 
	 * @param apply
	 * @return
	 */
	@RequestMapping(value = "/startleave", method = RequestMethod.POST)
	@ResponseBody
	public String startLeave(LeaveApply apply, @CurrentUser User loginUser) {
		String userid = loginUser.getUsername().toString();
		Map<String, Object> variables = new HashMap<String, Object>();
		variables.put("applyuserid", userid);
		ProcessInstance ins = leaveservice.startWorkflow(apply, userid,
				variables);
		runservice.setVariable(ins.getId(), "leave", apply);
		System.out.println("流程id" + ins.getId() + "已启动");
		return "success";
	}

	@RequestMapping("/approve")
	public String approveindex() {
		return "oa/taskList";
	}

	/**
	 * 获取代办任务列表
	 * 
	 * @param loginUser
	 * @return
	 */
	@RequestMapping("/taskList")
	@ResponseBody
	@RequiresPermissions("oa:approve")
	public String getTaskList(@CurrentUser User loginUser) {
		String role = "";
		for (Role r : loginUser.getRoleList()) {
			if (r.getRole().equals("部门经理") || r.getRole().equals("人事") || r.getRole().equals("总经理")) {
				role = r.getRole();
				break;
			}
		}
		List<LeaveApply> applyList = leaveservice.getAllTask(role);
		List<LeaveTask> taskList = new ArrayList<LeaveTask>();
		for (LeaveApply apply : applyList) {
			LeaveTask task = new LeaveTask();
			task.setId(apply.getId());
			task.setApply_time(apply.getApplyTime());
			task.setUser_id(apply.getUserId());
			task.setEnd_time(apply.getEndTime());
			task.setId(apply.getId());
			task.setLeave_type(apply.getLeaveType());
			task.setProcess_instance_id(apply.getProcessInstanceId());
			task.setProcessdefid(apply.getTask().getProcessDefinitionId());
			task.setReason(apply.getReason());
			task.setStart_time(apply.getStartTime());
			task.setTaskcreatetime(apply.getTask().getCreateTime());
			task.setTaskid(apply.getTask().getId());
			task.setTaskname(apply.getTask().getName());
			taskList.add(task);
		}
		return JSONArray.toJSONStringWithDateFormat(taskList, "yyyy-MM-dd",
				SerializerFeature.DisableCircularReferenceDetect);
	}

	@RequestMapping("complete/{taskid}/{yesOrNo}")
	@RequiresPermissions("oa:approve")
	@ResponseBody
	public String completeTask(@PathVariable("taskid") String taskid,
			@PathVariable("yesOrNo") Boolean yesOrNo,
			@CurrentUser User loginUser) {
		Map<String, Object> variables = new HashMap<String, Object>();
		String userId = loginUser.getId().toString();
		String role = "";
		for (Role r : loginUser.getRoleList()) {
			if (r.getRole().equals("部门经理")) {
				role = "deptleaderapprove";
			} else if (r.getRole().equals("人事")) {
				role = "hrapprove";
			} else if(r.getRole().equals("总经理")){
				role = "maapprove";
				
			}
		}
		variables.put(role, yesOrNo);
		taskservice.claim(taskid, userId);//认领任务
		taskservice.complete(taskid, variables);//完成任务
		return "success";
	}

	@RequestMapping("/xj")
	public String xjindex() {
		return "oa/xjlist";
	}

	@RequestMapping("/xjlist")
	@RequiresPermissions("oa:xj")
	@ResponseBody
	public String xjList(@CurrentUser User loginUser) {
		String username = loginUser.getUsername();
		List<LeaveApply> applyList = leaveservice.getAllXjTask(username);
		List<LeaveTask> taskList = new ArrayList<LeaveTask>();
		for (LeaveApply apply : applyList) {
			LeaveTask task = new LeaveTask();
			task.setId(apply.getId());
			task.setApply_time(apply.getApplyTime());
			task.setUser_id(apply.getUserId());
			task.setEnd_time(apply.getEndTime());
			task.setId(apply.getId());
			task.setLeave_type(apply.getLeaveType());
			task.setProcess_instance_id(apply.getProcessInstanceId());
			task.setProcessdefid(apply.getTask().getProcessDefinitionId());
			task.setReason(apply.getReason());
			task.setStart_time(apply.getStartTime());
			task.setTaskcreatetime(apply.getTask().getCreateTime());
			task.setTaskid(apply.getTask().getId());
			task.setTaskname(apply.getTask().getName());
			taskList.add(task);
		}
		return JSONArray.toJSONStringWithDateFormat(taskList, "yyyy-MM-dd",
				SerializerFeature.DisableCircularReferenceDetect);
	}

	@RequestMapping("/dealxj/{taskid}/{realstartTime}/{realendTime}")
	@ResponseBody
	public String dealXj(@PathVariable("taskid") String taskid,
			@PathVariable("realstartTime") String realstartTime,
			@PathVariable("realendTime") String realendTime) {
		leaveservice.completereportback(taskid, realstartTime, realendTime);
		return JSON.toJSONString("success");
	}

	@RequestMapping("his")
	public String hisindex() {
		return "oa/hislist";
	}

	@RequestMapping("hislist")
	@ResponseBody
	public String getHisList(@CurrentUser User loginUser) {
		List<HistoricProcessInstance> proinsList = histiryservice
				.createHistoricProcessInstanceQuery()
				.processDefinitionKey("leave")
				.startedBy(loginUser.getUsername()).finished().list();
		List<LeaveApply> applyList = new ArrayList<LeaveApply>();
		for (HistoricProcessInstance hispro : proinsList) {
			String bussinesskey = hispro.getBusinessKey();
			LeaveApply apply = leaveservice.getleave(Integer
					.parseInt(bussinesskey));
			applyList.add(apply);
		}
		return JSONArray.toJSONString(applyList,SerializerFeature.DisableCircularReferenceDetect);
	}
	
	@RequestMapping("updateapply")
	public String updateindex(){
		return "oa/updateList";
	}
	
	@RequestMapping("getUpdateList")
	@ResponseBody
	public String getUpdateList(@CurrentUser User loginUser){
		List<LeaveApply> applyList = leaveservice.getAllUpdateList(loginUser.getUsername());
		List<LeaveTask> taskList = new ArrayList<LeaveTask>();
		for (LeaveApply apply : applyList) {
			LeaveTask task = new LeaveTask();
			task.setId(apply.getId());
			task.setApply_time(apply.getApplyTime());
			task.setUser_id(apply.getUserId());
			task.setEnd_time(apply.getEndTime());
			task.setId(apply.getId());
			task.setLeave_type(apply.getLeaveType());
			task.setProcess_instance_id(apply.getProcessInstanceId());
			task.setProcessdefid(apply.getTask().getProcessDefinitionId());
			task.setReason(apply.getReason());
			task.setStart_time(apply.getStartTime());
			task.setTaskcreatetime(apply.getTask().getCreateTime());
			task.setTaskid(apply.getTask().getId());
			task.setTaskname(apply.getTask().getName());
			taskList.add(task);
		}
		return JSONArray.toJSONStringWithDateFormat(taskList, "yyyy-MM-dd",
				SerializerFeature.DisableCircularReferenceDetect);
	}
	
	@RequestMapping("dealReapply/{taskid}/{reapply}")
	@ResponseBody
	public String updateComplete(@PathVariable("taskid")String taskid,LeaveApply leave,@PathVariable("reapply")String reapply){
		leaveservice.updatecomplete(taskid, leave, reapply);
		return "success";
	}
}
