package com.test.shiro.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.test.shiro.mapper.UserMapper;
import com.test.shiro.pojo.User;
import com.test.shiro.service.IUserService;
import com.test.shiro.util.PasswordHelper;

@Service("userService")
public class UserServiceImpl implements IUserService{
	@Resource(name="userMapper")
	private UserMapper userMapper;
	@Resource(name="passwordHelper")
	private PasswordHelper passwordHelper;
	
	@Override
	public User getUserByName(String username) {
		// TODO Auto-generated method stub
		return userMapper.selectUserByName(username);
	}

	@Override
	public List<User> getUserList() {
		// TODO Auto-generated method stub
		return userMapper.selectAllUser();
	}

	@Override
	public int register(User user) {
		// TODO Auto-generated method stub
		passwordHelper.encryptPassword(user);
		return userMapper.insertSelective(user);
	}

	@Override
	public int editUser(User user) {
		// TODO Auto-generated method stub
		if(user.getPassword()!=null){
			passwordHelper.encryptPassword(user);
		}
		return userMapper.updateByPrimaryKeySelective(user);
	}

	@Override
	public int lockUser(Long userId) {
		User user = new User();
		user.setId(userId);
		user.setLocked(Boolean.TRUE);
		return userMapper.updateByPrimaryKeySelective(user);
	}

	@Override
	public int delete(Long userId) {
		// TODO Auto-generated method stub
		return userMapper.deleteByPrimaryKey(userId);
	}

	@Override
	public User getUserById(Long userId) {
		// TODO Auto-generated method stub
		return userMapper.selectByPrimaryKey(userId);
	}

}
