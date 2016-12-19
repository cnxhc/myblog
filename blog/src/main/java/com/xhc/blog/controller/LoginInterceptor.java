package com.xhc.blog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	 @Override
	    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	         Object user = request.getSession().getAttribute("manager");
	        if (user == null) {
	            response.sendRedirect("/blog/login.html");
	             return false;
	         }
	        
	          return true;
	     }
	  
	      @Override
	      public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
	      
	    }
	  
	      @Override
	      public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
	       
	     }
}
