package com.test.shiro.pojo;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

public class Organization implements Serializable{
    private Long id;

    private String name;

    private Long parentId;

    private String parentIds;

    private Boolean available;
    
    private Set<User> userSet;
    
    private List<Organization> childList;

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
        this.name = name == null ? null : name.trim();
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public String getParentIds() {
        return parentIds;
    }

    public void setParentIds(String parentIds) {
        this.parentIds = parentIds == null ? null : parentIds.trim();
    }

    public Boolean getAvailable() {
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }

	public Set<User> getUserSet() {
		return userSet;
	}

	public void setUserSet(Set<User> userSet) {
		this.userSet = userSet;
	}

	public List<Organization> getChildList() {
		return childList;
	}

	public void setChildList(List<Organization> childList) {
		this.childList = childList;
	}
    
}