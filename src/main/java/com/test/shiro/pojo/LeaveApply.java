package com.test.shiro.pojo;

import java.io.Serializable;

import jodd.datetime.JDateTime;

import org.activiti.engine.task.Task;

public class LeaveApply implements Serializable {
	private int id;
	private String processInstanceId;
	private String userId;
	private String startTime;
	private String endTime;
	private String leaveType;
	private String reason;
	private String applyTime;
	private String realityStartTime;
	private String realityEndTime;
	private Task task;
	private boolean generalManagerAudit;
	private int day;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProcessInstanceId() {
		return processInstanceId;
	}
	public void setProcessInstanceId(String processInstanceId) {
		this.processInstanceId = processInstanceId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getLeaveType() {
		return leaveType;
	}
	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getApplyTime() {
		return applyTime;
	}
	public void setApplyTime(String applyTime) {
		this.applyTime = applyTime;
	}
	public String getRealityStartTime() {
		return realityStartTime;
	}
	public void setRealityStartTime(String realityStartTime) {
		this.realityStartTime = realityStartTime;
	}
	public String getRealityEndTime() {
		return realityEndTime;
	}
	public void setRealityEndTime(String realityEndTime) {
		this.realityEndTime = realityEndTime;
	}
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}
	public boolean isGeneralManagerAudit() {
		return generalManagerAudit;
	}
	public void setGeneralManagerAudit(boolean generalManagerAudit) {
		this.generalManagerAudit = generalManagerAudit;
	}
	public int getDay() {
		JDateTime begin = new JDateTime(this.getStartTime());
		JDateTime end = new JDateTime(this.getEndTime());
		this.day = begin.daysBetween(end);
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	
}
