package com.test.shiro.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.UnauthorizedException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;


@ControllerAdvice
public class DefaultExceptionHandler implements HandlerExceptionResolver{
    /**
     * 没有权限 异常
     */
    @ExceptionHandler({UnauthorizedException.class})
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    public ModelAndView processUnauthenticatedException(NativeWebRequest request, UnauthorizedException e) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("exception", e);
        mv.setViewName("unauthorized");
        return mv;
    }

	@Override
	public ModelAndView resolveException(HttpServletRequest arg0,
			HttpServletResponse response, Object handler, Exception ex) {
			ex.printStackTrace();
		 CustomException customException = null;  
	        if(ex instanceof CustomException){  
	            customException = (CustomException) ex;  
	        }else{//如果该异常类型不是系统自定义的异常，构造一个自定义的异常类型（信息为“未知错误”）  
	            customException = new CustomException("未知错误");  
	            
	        }  
	        //错误信息  
	        String message = customException.getMessage();  
	        //定义modelAndView  
	        ModelAndView modelAndView = new ModelAndView();  
	        //将错误信息传到页面  
	        modelAndView.addObject("message",message);  
	        //指向错误页面  
	        modelAndView.setViewName("error");  
	        return modelAndView;  
	}
}
