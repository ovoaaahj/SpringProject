package com.spring.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.spring.vo.SessionVO;

public class AuthHandlerInterceptor2 extends HandlerInterceptorAdapter{

	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		    throws Exception {
		
		//1. get information of session 
		HttpSession session = request.getSession();
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		
		//2. check the svo - whether svo is null or not
		if(svo == null) {
			response.sendRedirect("/project/login.do");
			return false;
		}else {
			if(!svo.getName().equals("°ü¸®ÀÚ")) {
				response.sendRedirect("/project/index.do");
				return false;
				
			}
		}
			return true; //bring svo after jump into the controller 
		}//preHandle
	
}
