package com.test.shiro.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.activiti.engine.IdentityService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.history.HistoricActivityInstance;
import org.activiti.engine.impl.persistence.entity.ProcessDefinitionEntity;
import org.activiti.engine.impl.pvm.PvmTransition;
import org.activiti.engine.impl.pvm.process.ActivityImpl;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.shiro.mapper.LeaveApplyMapper;
import com.test.shiro.pojo.LeaveApply;
import com.test.shiro.service.ILeaveService;

@Service
public class LeaveServiceImpl implements ILeaveService{
	@Resource(name="leaveApplyMapper")
	LeaveApplyMapper leaveApplyMapper;
	@Resource(name="identityService")
	IdentityService identityservice;
	@Resource(name="runtimeService")
	RuntimeService runtimeservice;
	@Resource(name="taskService")
	TaskService taskservice;

	@Override
	public ProcessInstance startWorkflow(LeaveApply apply, String userid,
			Map<String, Object> variables) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		apply.setApplyTime(sdf.format(new Date()));
		apply.setUserId(userid);
		leaveApplyMapper.save(apply);
		String businesskey=String.valueOf(apply.getId());//使用leaveapply表的主键作为businesskey,连接业务数据和流程数据
		identityservice.setAuthenticatedUserId(userid);
		ProcessInstance instance=runtimeservice.startProcessInstanceByKey("leave2",businesskey,variables);
		System.out.println(businesskey);
		String instanceid=instance.getId();
		apply.setProcessInstanceId(instanceid);
		leaveApplyMapper.update(apply);
		return instance;
	}

	@Override
	public List<LeaveApply> getpagedepttask(String userid, int firstrow,
			int rowcount) {
		List<LeaveApply> results=new ArrayList<LeaveApply>();
		List<Task> tasks=taskservice.createTaskQuery().taskCandidateGroup("部门经理").listPage(firstrow, rowcount);
		for(Task task:tasks){
			String instanceid=task.getProcessInstanceId();
			ProcessInstance ins=runtimeservice.createProcessInstanceQuery().processInstanceId(instanceid).singleResult();
			String businesskey=ins.getBusinessKey();
			LeaveApply a=leaveApplyMapper.get(Integer.parseInt(businesskey));
			a.setTask(task);
			results.add(a);
		}
		return results;
	}
	

	@Override
	public int getalldepttask(String userid) {
		List<Task> tasks=taskservice.createTaskQuery().taskCandidateGroup("部门经理").list();
		return tasks.size();
	}

	@Override
	public LeaveApply getleave(int id) {
		LeaveApply leave=leaveApplyMapper.get(id);
		return leave;
	}

	@Override
	public List<LeaveApply> getpagehrtask(String userid, int firstrow,
			int rowcount) {
		List<LeaveApply> results=new ArrayList<LeaveApply>();
		List<Task> tasks=taskservice.createTaskQuery().taskCandidateGroup("人事").listPage(firstrow, rowcount);
		for(Task task:tasks){
			String instanceid=task.getProcessInstanceId();
			ProcessInstance ins=runtimeservice.createProcessInstanceQuery().processInstanceId(instanceid).singleResult();
			String businesskey=ins.getBusinessKey();
			LeaveApply a=leaveApplyMapper.get(Integer.parseInt(businesskey));
			a.setTask(task);
			results.add(a);
		}
		return results;
	}

	@Override
	public int getallhrtask(String userid) {
		List<Task> tasks=taskservice.createTaskQuery().taskCandidateGroup("人事").list();
		return tasks.size();
	}

	@Override
	public List<LeaveApply> getpageXJtask(String userid, int firstrow,
			int rowcount) {
		List<LeaveApply> results=new ArrayList<LeaveApply>();
		List<Task> tasks=taskservice.createTaskQuery().taskCandidateOrAssigned(userid).taskName("销假").listPage(firstrow, rowcount);
		for(Task task:tasks){
			String instanceid=task.getProcessInstanceId();
			ProcessInstance ins=runtimeservice.createProcessInstanceQuery().processInstanceId(instanceid).singleResult();
			String businesskey=ins.getBusinessKey();
			LeaveApply a=leaveApplyMapper.get(Integer.parseInt(businesskey));
			a.setTask(task);
			results.add(a);
		}
		return results;
	}

	@Override
	public int getallXJtask(String userid) {
		List<Task> tasks=taskservice.createTaskQuery().taskCandidateOrAssigned(userid).taskName("销假").list();
		return tasks.size();
	}

	@Override
	public List<LeaveApply> getpageupdateapplytask(String userid, int firstrow,
			int rowcount) {
		List<LeaveApply> results=new ArrayList<LeaveApply>();
		List<Task> tasks=taskservice.createTaskQuery().taskCandidateOrAssigned(userid).taskName("调整申请").listPage(firstrow, rowcount);
		for(Task task:tasks){
			String instanceid=task.getProcessInstanceId();
			ProcessInstance ins=runtimeservice.createProcessInstanceQuery().processInstanceId(instanceid).singleResult();
			String businesskey=ins.getBusinessKey();
			LeaveApply a=leaveApplyMapper.get(Integer.parseInt(businesskey));
			a.setTask(task);
			results.add(a);
		}
		return results;
	}

	@Override
	public int getallupdateapplytask(String userid) {
		List<Task> tasks=taskservice.createTaskQuery().taskCandidateOrAssigned(userid).taskName("调整申请").list();
		return tasks.size();
	}

	/**
	 * 销假处理
	 */
	public void completereportback(String taskid, String realstartTime, String realendTime) {
		Task task=taskservice.createTaskQuery().taskId(taskid).singleResult();
		String instanceid=task.getProcessInstanceId();
		ProcessInstance ins=runtimeservice.createProcessInstanceQuery().processInstanceId(instanceid).singleResult();
		String businesskey=ins.getBusinessKey();
		LeaveApply a=leaveApplyMapper.get(Integer.parseInt(businesskey));
		a.setRealityStartTime(realstartTime);
		a.setRealityEndTime(realendTime);
		leaveApplyMapper.update(a);
		taskservice.complete(taskid);
	}
	
	/**
	 * 调整申请处理
	 */
	public void updatecomplete(String taskid, LeaveApply leave,String reapply) {
		Task task=taskservice.createTaskQuery().taskId(taskid).singleResult();
		String instanceid=task.getProcessInstanceId();
		ProcessInstance ins=runtimeservice.createProcessInstanceQuery().processInstanceId(instanceid).singleResult();
		String businesskey=ins.getBusinessKey();
		LeaveApply a=leaveApplyMapper.get(Integer.parseInt(businesskey));
		a.setLeaveType(leave.getLeaveType());
		a.setStartTime(leave.getStartTime());
		a.setEndTime(leave.getEndTime());
		a.setReason(leave.getReason());
		Map<String,Object> variables=new HashMap<String,Object>();
		variables.put("reapply", reapply);
		leaveApplyMapper.update(a);
		taskservice.complete(taskid,variables);
	}
	
	public List<String> getHighLightedFlows(  
	        ProcessDefinitionEntity processDefinitionEntity,  
	        List<HistoricActivityInstance> historicActivityInstances) {  
	  
	    List<String> highFlows = new ArrayList<String>();// 用以保存高亮的线flowId  
	    for (int i = 0; i < historicActivityInstances.size(); i++) {// 对历史流程节点进行遍历  
	        ActivityImpl activityImpl = processDefinitionEntity  
	                .findActivity(historicActivityInstances.get(i)  
	                        .getActivityId());// 得 到节点定义的详细信息  
	        List<ActivityImpl> sameStartTimeNodes = new ArrayList<ActivityImpl>();// 用以保存后需开始时间相同的节点  
	        if ((i + 1) >= historicActivityInstances.size()) {  
	            break;  
	        }  
	        ActivityImpl sameActivityImpl1 = processDefinitionEntity  
	                .findActivity(historicActivityInstances.get(i + 1)  
	                        .getActivityId());// 将后面第一个节点放在时间相同节点的集合里  
	        sameStartTimeNodes.add(sameActivityImpl1);  
	        for (int j = i + 1; j < historicActivityInstances.size() - 1; j++) {  
	            HistoricActivityInstance activityImpl1 = historicActivityInstances  
	                    .get(j);// 后续第一个节点  
	            HistoricActivityInstance activityImpl2 = historicActivityInstances  
	                    .get(j + 1);// 后续第二个节点  
	            if (activityImpl1.getStartTime().equals(  
	                    activityImpl2.getStartTime())) {// 如果第一个节点和第二个节点开始时间相同保存  
	                ActivityImpl sameActivityImpl2 = processDefinitionEntity  
	                        .findActivity(activityImpl2.getActivityId());  
	                sameStartTimeNodes.add(sameActivityImpl2);  
	            } else {// 有不相同跳出循环  
	                break;  
	            }  
	        }  
	        List<PvmTransition> pvmTransitions = activityImpl  
	                .getOutgoingTransitions();// 取出节点的所有出去的线  
	        for (PvmTransition pvmTransition : pvmTransitions) {// 对所有的线进行遍历  
	            ActivityImpl pvmActivityImpl = (ActivityImpl) pvmTransition  
	                    .getDestination();// 如果取出的线的目标节点存在时间相同的节点里，保存该线的id，进行高亮显示  
	            if (sameStartTimeNodes.contains(pvmActivityImpl)) {  
	                highFlows.add(pvmTransition.getId());  
	            }  
	        }  
	    }  
	    return highFlows;  
	} 
	
	public List<LeaveApply> getAllTask(String role){
		List<LeaveApply> applyList = new ArrayList<LeaveApply>();
		List<Task> taskList = taskservice.createTaskQuery().taskCandidateGroup(role).list();
		for(Task task:taskList){
			String instanceId = task.getProcessInstanceId();
			ProcessInstance ins = runtimeservice.createProcessInstanceQuery().processInstanceId(instanceId).singleResult();
			String businessKey = ins.getBusinessKey();
			LeaveApply apply = leaveApplyMapper.get(Integer.valueOf(businessKey));
			apply.setTask(task);
			applyList.add(apply);
		}
		return applyList;
	}
	
	/**
	 * 销假列表
	 * @param user
	 * @return
	 */
	public List<LeaveApply> getAllXjTask(String user){
		List<LeaveApply> results=new ArrayList<LeaveApply>();
		List<Task> tasks=taskservice.createTaskQuery().taskCandidateOrAssigned(user).taskName("销假").list();
		for(Task task:tasks){
			String instanceid=task.getProcessInstanceId();
			ProcessInstance ins=runtimeservice.createProcessInstanceQuery().processInstanceId(instanceid).singleResult();
			String businesskey=ins.getBusinessKey();
			LeaveApply a=leaveApplyMapper.get(Integer.parseInt(businesskey));
			a.setTask(task);
			results.add(a);
		}
		return results;
	}
	
	/**
	 * 调整申请列表
	 * @param userid
	 * @return
	 */
	public List<LeaveApply> getAllUpdateList(String userid){
		List<LeaveApply> results=new ArrayList<LeaveApply>();
		List<Task> tasks=taskservice.createTaskQuery().taskCandidateOrAssigned(userid).taskName("调整申请").list();
		for(Task task:tasks){
			String instanceid=task.getProcessInstanceId();
			ProcessInstance ins=runtimeservice.createProcessInstanceQuery().processInstanceId(instanceid).singleResult();
			String businesskey=ins.getBusinessKey();
			LeaveApply a=leaveApplyMapper.get(Integer.parseInt(businesskey));
			a.setTask(task);
			results.add(a);
		}
		return results;
	}
	
	
}
