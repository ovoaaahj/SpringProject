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
	 * 선택삭제
	 */
	public int getSelectDelete(String[] dellist) {
		return cartDAO.getDelete(dellist);
	}
	
	public ModelAndView getdelResult(String id) {
		ModelAndView mv = new ModelAndView();
		boolean result = memberDAO.getDelete(id);
		
		if(result) {
			mv.setViewName("redirect:/delSuccess.do");
		}else {
			mv.setViewName("errorPage");
			
		}
		
		return mv;
	}
}
