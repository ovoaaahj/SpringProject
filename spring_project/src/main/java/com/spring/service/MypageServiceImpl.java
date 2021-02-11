package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dao.CartDAO;
import com.spring.dao.CoffeeMemberDAO;
@Service("mypageService")

public class MypageServiceImpl implements MypageService{
	
	@Autowired
	private CoffeeMemberDAO memberDAO;
	private CartDAO cartDAO;
	
	/**
	 * ¼±ÅÃ»èÁ¦
	 */
	public int getSelectDelete(String[] dellist) {
		return cartDAO.getDelete(dellist);
	}
	
	/**
	 * Å»Åð
	 */
	public ModelAndView getdelResult(String id) {
		ModelAndView mv = new ModelAndView();
		int del_result = memberDAO.getDelete(id);
		
		
		if(del_result != 0) {
			mv.setViewName("/mypage/delSuccess");
		}else {
			mv.setViewName("errorPage");
		}
		
		return mv;
	}
}
