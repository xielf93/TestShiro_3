package com.test.shiro.listener;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.apache.ibatis.session.LocalCacheScope;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.mvc.condition.PatternsRequestCondition;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

public class RequestUrlListener implements ApplicationListener<ContextRefreshedEvent>{

	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {
		if(event.getApplicationContext().getParent()==null){
			ApplicationContext applicationContext = event.getApplicationContext();
			RequestMappingHandlerMapping bean = applicationContext.getBean(RequestMappingHandlerMapping.class);
			Set<String> result = new HashSet<String>();
			Map<RequestMappingInfo, HandlerMethod> handlersMethods = bean.getHandlerMethods();
			for(RequestMappingInfo rmi : handlersMethods.keySet()){
				PatternsRequestCondition pc = rmi.getPatternsCondition();  
                Set<String> pSet = pc.getPatterns();  
                result.addAll(pSet);  
			}			  
		}
		
	}

}
