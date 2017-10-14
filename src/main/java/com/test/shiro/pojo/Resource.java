package com.test.shiro.pojo;

import java.io.Serializable;
import java.util.List;

public class Resource implements Serializable, Comparable<Resource>{
    private Long id;

    private String name;

    private String type;

    private String url;

    private Long parentId;

    private String level;

    private String permission;

    private Boolean available;
    
    private List<Resource> children;

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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public String getLevel() {
		return level;
	}

	public void setLevl(String level) {
		this.level = level;
	}

	public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission == null ? null : permission.trim();
    }

    public Boolean getAvailable() {
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }
    
    
    
    public List<Resource> getChildren() {
		return children;
	}

	public void setChildren(List<Resource> children) {
		this.children = children;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	@Override
    public int hashCode() {
    	// TODO Auto-generated method stub
    	return this.getName().hashCode();
    }
    
    @Override
    public boolean equals(Object obj) {
    	if(obj instanceof Resource){
    		return this.getName().equals(((Resource)obj).getName());
    	}
    	return super.equals(obj);
    }
    
	@Override
	public int compareTo(Resource o) {
		// TODO Auto-generated method stub
		return this.getName().compareTo(o.getName());
	}
}