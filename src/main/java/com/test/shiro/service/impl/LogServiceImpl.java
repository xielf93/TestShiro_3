package com.test.shiro.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.test.shiro.pojo.Log;
import com.test.shiro.service.ILogService;
import com.test.shiro.mapper.LogMapper;

@Service("logService")
public class LogServiceImpl implements ILogService{
	@Resource(name="logMapper")
	private LogMapper logMapper;

	@Override
	public int createLog(Log log) {
		// TODO Auto-generated method stub
		return logMapper.insertSelective(log);
	}

	@Override
	public List<Log> selectAll() {
		// TODO Auto-generated method stub
		return logMapper.selectAll();
	}

}
