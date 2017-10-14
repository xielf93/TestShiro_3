package com.test.shiro.util;

import java.util.List;

import com.alibaba.fastjson.annotation.JSONField;

public class ResourceTreeUtil {
	private Long id;
	private String name;
	private Boolean hasNot;
	private Boolean available;
	private Long parentId;
	private String level;
	
	@JSONField(name="Id")
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Boolean getHasNot() {
		return hasNot;
	}
	public void setHasNot(Boolean hasNot) {
		this.hasNot = hasNot;
	}
	public Boolean getAvailable() {
		return available;
	}
	public void setAvailable(Boolean available) {
		this.available = available;
	}
	
	@JSONField(name="ParentId")
	public Long getParentId() {
		return parentId;
	}
	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}
	
	@JSONField(name="Level")
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	
	
	
}
