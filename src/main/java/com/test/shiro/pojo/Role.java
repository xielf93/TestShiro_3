package com.test.shiro.pojo;

import java.io.Serializable;
import java.util.Set;

public class Role implements Serializable,Comparable<Role>{
    private Long id;

    private String role;

    private String description;

    private Boolean available;
    
    private Set<Resource> resourceSet;
    
    private Set<User> userSet;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Boolean getAvailable() {
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }
    
	public Set<Resource> getResourceSet() {
		return resourceSet;
	}

	public void setResourceSet(Set<Resource> resourceSet) {
		this.resourceSet = resourceSet;
	}

	public Set<User> getUserSet() {
		return userSet;
	}

	public void setUserSet(Set<User> userSet) {
		this.userSet = userSet;
	}

	@Override
	public int compareTo(Role o) {
		// TODO Auto-generated method stub
		return this.getId().compareTo(o.getId());
	}
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return this.getRole().hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		if(obj instanceof Role){
			return this.getRole().equals(((Role)obj).getRole());
		}
		return false;
	}
}