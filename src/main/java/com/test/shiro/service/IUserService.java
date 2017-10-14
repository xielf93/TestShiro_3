package com.test.shiro.service;

import java.util.List;

import com.test.shiro.pojo.User;

public interface IUserService {
	/**
	 * 根据用户名获取用户
	 * @param username
	 * @return
	 */
	public User getUserByName(String username);
	
	/**
	 * 获取用户集合
	 * @return
	 */
	public List<User> getUserList();
	
	/**
	 * 用户注册
	 * @param user
	 * @return
	 */
	public int register(User user);
	
	/**
	 * 编辑用户信息
	 * @param user
	 * @return
	 */
	public int editUser(User user);
	
	/**
	 * 锁定用户
	 * @param user
	 * @return
	 */
	public int lockUser(Long userId);
	
	/**
	 * 删除用户
	 * @param userId
	 * @return
	 */
	public int delete(Long userId);
	
	/**
	 * 根据编号获取用户基本信息
	 * @param userId
	 * @return
	 */
	public User getUserById(Long userId);
}
