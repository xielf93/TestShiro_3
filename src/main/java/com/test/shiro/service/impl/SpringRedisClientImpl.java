package com.test.shiro.service.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import redis.clients.jedis.Jedis;

import com.sun.tools.jdi.resources.jdi;
import com.test.shiro.service.SpringRedisClient;

@Service("SpringRedisClient")
public class SpringRedisClientImpl implements SpringRedisClient{
	@Autowired
    private RedisTemplate<String, Object> template;
    @Autowired
    private JedisConnectionFactory jedisConnectionFactory;

	@Override
	public void setKeyValue(String key, String value) {		
		template.opsForValue().set(key, value);
	}

	@Override
	public Object getValueByKey(String key) {

		return template.opsForValue().get(key);
	}

	@Override
	public void incr(String key) {
		template.opsForValue().increment(key, 1);	
	}

	@Override
	public void lPush(String key, String value) {
		template.opsForList().leftPush(key, value);
	}

	@Override
	public boolean checkKey(String key) {

		return template.hasKey(key);
	}

	@Override
	public Object lIndex(String key) {
		
		return template.opsForList().index(key, 0);
	}

	@Override
	public Long llength(String key) {

		return template.opsForList().size(key);
	}

	@Override
	public String lpop(String key) {

		return (String)template.opsForList().leftPop(key);
	}

	@Override
	public Set<String> getKeys(String pattern) {

		return template.keys(pattern);
	}

	@Override
	public void flushAll() {
		Jedis jedis = jedisConnectionFactory.getShardInfo().createResource();
		jedis.flushAll();
		jedis.close();	
	}

}
