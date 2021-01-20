package com.spring.service;

import org.springframework.web.servlet.ModelAndView;

import com.spring.vo.ProductVO;

public interface AdminShopService {
	ModelAndView getList();
	ModelAndView getDelete(String pid);
	ModelAndView getResultDelete(String id);
	ModelAndView getResultInsert(ProductVO vo);
}
