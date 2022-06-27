package com.project.util;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.project.model.Member;

public class UserInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		
		Member member = (Member) session.getAttribute("user");
		System.out.println("UserIntercepter");
		if(member != null)
			return true;
		
		response.sendRedirect("/login");
		
		return false;
	}
	
}
