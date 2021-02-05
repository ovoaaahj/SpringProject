package com.spring.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

public interface EventService {
	ModelAndView getList(String rpage);
	Object getContent(String id);
	Object getResultWrite(Object vo,HttpServletRequest request);
	Object getUpdate(String id);
	Object getResultUpdate(Object vo,HttpServletRequest request,String eid);
	ModelAndView getResultDelete(String rpage);
}
