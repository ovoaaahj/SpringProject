package com.spring.service;

import org.springframework.web.servlet.ModelAndView;

public interface MypageService {
	ModelAndView getdelResult(String id);
	ModelAndView buying_list(String rpage,String id);
}
