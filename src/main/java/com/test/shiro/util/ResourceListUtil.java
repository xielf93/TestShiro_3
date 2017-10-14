package com.test.shiro.util;

import com.alibaba.fastjson.annotation.JSONField;

public class ResourceListUtil {
	private Long Id;
	private String name;
	private String type;
	private String url;
	private Long ParentId;
	private String Level;
	private Boolean available;
	private String permission;
	
	@JSONField(name="Id")
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		Id = id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	@JSONField(name="ParentId")
	public Long getParentId() {
		return ParentId;
	}
	public void setParentId(Long parentId) {
		ParentId = parentId;
	}
	
	@JSONField(name="Level")
	public String getLevel() {
		return Level;
	}
	public void setLevel(String level) {
		Level = level;
	}
	public Boolean getAvailable() {
		return available;
	}
	public void setAvailable(Boolean available) {
		this.available = available;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	
}
