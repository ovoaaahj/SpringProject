package com.spring.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.spring.vo.ProductVO;

public interface AdminShopService {
	ModelAndView getList(String rpage);
	int getResultDelete(String[] dellist);
	ModelAndView getResultInsert(ProductVO vo,HttpServletRequest request);
}
