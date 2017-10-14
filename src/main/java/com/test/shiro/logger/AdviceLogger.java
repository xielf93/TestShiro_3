package com.test.shiro.logger;

import java.util.Arrays;
import java.util.Date;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import com.test.shiro.mapper.LogMapper;
import com.test.shiro.pojo.Log;

/**
 * 使用注解定义切面
 * @author xielf
 *
 */
@Aspect
public class AdviceLogger {
	private static final Logger logger = Logger
			.getLogger(AdviceLogger.class);
	@Resource(name="logMapper")
	private LogMapper logMapper;
	
	@Pointcut("execution(* com.test.shiro.Service..*.*(..))")
	public void pointcut(){}
	
	@Around("pointcut()")
	public Object aroundLogger(ProceedingJoinPoint jp)throws Throwable{
		logger.info("调用" + jp.getTarget() + "的" + jp.getSignature().getName()
				+ "方法。方法入参：" + Arrays.toString(jp.getArgs()));
		Object result;
		Date start=null;
		Date end = null;
		try {
			String methodname = jp.getSignature().getName();
			if(!methodname.equals("getUserByName") ){
				String className=jp.getTarget().getClass().getSimpleName();
				String action ="";
				if(className.contains("User")){
					action="操作用户";
				}else if(className.contains("Organization")){
					action="操作组织机构";
				}else if(className.contains("Role")){
					action="操作角色";
				}else if(className.contains("Resource")){
					action="操作资源";
				}else if(className.contains("Log")){
					action="操作日志";
				}else{
					action="登录";
				}
				String username=SecurityUtils.getSubject().getPrincipal().toString();			
				com.test.shiro.pojo.Log log = new Log();
				log.setAction(action);
				log.setActionTime(new Date());
				log.setUsername(username);
				logMapper.insertSelective(log);
			}		
			start = new Date();
			result = jp.proceed();
			end = new Date();
			logger.info("调用" + jp.getTarget() + "的" + jp.getSignature().getName()
					+ "方法。方法返回值：" + result);
			return result;
		} catch (Throwable e) {
			logger.error(jp.getSignature().getName()+"方法发生异常："+e);
			throw e;
		} finally{
			logger.info(jp.getSignature().getName()+"方法执行结束! 方法的执行时间是:"+(end.getTime()-start.getTime())+"毫秒");
		}
		
	}

}
