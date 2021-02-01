package com.spring.service;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.spring.vo.CoffeeMemberVO;

public interface MemberService {
	ModelAndView getResultLogin(CoffeeMemberVO vo,HttpSession session);
	String getResultJoin(CoffeeMemberVO vo);
	String getResultIdCheck(String id);
	String getResultName(String name);
	String getResultHp(String hp);
	ModelAndView getFineId(String name,String hp);
	ModelAndView getFindPass(String id);
}