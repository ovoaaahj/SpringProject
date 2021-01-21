package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyPageController {
	
	@RequestMapping(value="/mypage/buying_list.do", method=RequestMethod.GET)
	public String buying_list() {
		return "/mypage/buying/buying_list";
	}
	
	@RequestMapping(value="/mypage/userInfo.do", method=RequestMethod.GET)
	public String userInfo() {
		return "/mypage/user/userInfo";
	}
	
	@RequestMapping(value="/mypage/cart_list.do", method=RequestMethod.GET)
	public String CartList() {
		return "/mypage/cart/cart_list";
	}
	
	@RequestMapping(value="/mypage.do", method=RequestMethod.GET)
	public String mypage() {
		return "/mypage/mypage";
	}
}
