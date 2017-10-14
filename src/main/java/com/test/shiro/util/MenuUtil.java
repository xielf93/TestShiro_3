package com.test.shiro.util;

import java.util.List;

public class MenuUtil {
	private Long id;
	private String text;
	private String icon;
	private String url;
	private List<MenuUtil> menus;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public List<MenuUtil> getMenus() {
		return menus;
	}
	public void setMenus(List<MenuUtil> menus) {
		this.menus = menus;
	}
	

}
