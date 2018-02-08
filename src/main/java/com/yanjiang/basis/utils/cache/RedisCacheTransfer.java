package com.yanjiang.basis.utils.cache;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;

/**
 * Created by dllo on 17/11/27.
 */
public class RedisCacheTransfer {

    @Autowired
    public void setJedisConnectionFactory(JedisConnectionFactory factory){
        RedisCache.setConnectionFactory(factory);
    }

}
