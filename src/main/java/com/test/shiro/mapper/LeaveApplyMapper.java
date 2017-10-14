package com.test.shiro.mapper;

import com.test.shiro.pojo.LeaveApply;

public interface LeaveApplyMapper {
	LeaveApply get(int id);
	int save(LeaveApply apply);
	int update(LeaveApply apply);
}
