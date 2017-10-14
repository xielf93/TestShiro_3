package com.test.shiro.jedis;

import org.apache.shiro.cache.Cache;


public interface ShiroCacheManager {
  <k, v> Cache<k, v> getCache(String name);

  void destroy();
}
