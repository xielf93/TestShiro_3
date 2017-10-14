package com.test.shiro.service;

import java.util.Set;

public interface SpringRedisClient {
	void setKeyValue(String key,String value);
	Object getValueByKey(String key);
	void incr(String key);
	void lPush(String key, String value);
	boolean checkKey(String key);
	Object lIndex(String key);
	Long llength(String key);
	String lpop(String key);
	Set<String> getKeys(String pattern);
	void flushAll();
}
