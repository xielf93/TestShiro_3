package com.test.shiro.service;

import java.util.List;

import com.test.shiro.pojo.Log;

public interface ILogService {
	public int createLog(Log log);
	
	public List<Log> selectAll();
}
