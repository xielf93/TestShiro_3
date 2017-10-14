package com.test.shiro.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Set;


public class User implements Serializable,Comparable<User>{
    private Long id;

    private Long organizationId;
    
    private Organization organization;

    private String username;

    private String password;

    private String salt;

    private Boolean locked;

    private Date createTime;

    private Date lastLoginTime;
    
    private  Set<Role> roleList;
    
    private  Set<Resource> resourceList;
    
    public User(){}
    
    public User(User user){
    	this.id=user.getId();
    	this.lastLoginTime=user.getLastLoginTime();
    	this.createTime=user.getCreateTime();
    	this.locked=user.getLocked();
    	this.organization=user.getOrganization();
    	this.organizationId=user.getOrganizationId();
    	this.password=user.getPassword();
    	this.resourceList=user.getResourceList();
    	this.roleList=user.getRoleList();
    	this.salt=user.getSalt();
    	this.username=user.getUsername();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(Long organizationId) {
        this.organizationId = organizationId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt == null ? null : salt.trim();
    }
    
    public String getCredentialsSalt() {
        return username + salt;
    }

    public Boolean getLocked() {
        return locked;
    }

    public void setLocked(Boolean locked) {
        this.locked = locked;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getLastLoginTime() {
        return lastLoginTime;
    }

    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }

	public Organization getOrganization() {
		return organization;
	}

	public void setOrganization(Organization organization) {
		this.organization = organization;
	}
	
	public Set<Role> getRoleList() {
		return roleList;
	}

	public void setRoleList(Set<Role> roleList) {
		this.roleList = roleList;
	}

	public Set<Resource> getResourceList() {
		return resourceList;
	}

	public void setResourceList(Set<Resource> resourceList) {
		this.resourceList = resourceList;
	}

	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return this.getUsername().hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof User){
			return this.getUsername().equals(((User)obj).getUsername());
		}
		return false;
	}
	
	@Override
	public int compareTo(User o) {
		return this.getUsername().compareTo(o.getUsername());
	}
    
}