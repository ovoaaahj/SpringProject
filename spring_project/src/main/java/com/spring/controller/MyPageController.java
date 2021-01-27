package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyPageController {
	
	/**
	 * Ż�� ������
	 * @return
	 */
	@RequestMapping(value="/delAccount.do", method=RequestMethod.GET)
	public String delAccount() {
		return "/mypage/delAccount";
	}
	/**
	 * ���Ÿ�� ������
	 * @return
	 */
	@RequestMapping(value="/mypage/buying_list.do", method=RequestMethod.GET)
	public String buying_list() {
		return "/mypage/buying/buying_list";
	}
	/**
	 * ȸ������ ���� ������
	 * @return
	 */
	@RequestMapping(value="/mypage/userInfo.do", method=RequestMethod.GET)
	public String userInfo() {
		return "/mypage/user/userInfo";
	}
	/**
	 * ��ٱ��� ���� ó��
	
	public String getdeleteCartList(value="/mypage/cart_") {
		return
	}
	 */
	
	/**
	 * ��ٱ��� ������
	 * @return
	 */
	@RequestMapping(value="/mypage/cart_list.do", method=RequestMethod.GET)
	public String CartList() {
		return "/mypage/cart/cart_list";
	}
	/**
	 * ����������
	 * @return
	 */
	@RequestMapping(value="/mypage.do", method=RequestMethod.GET)
	public String mypage() {
		return "/mypage/mypage";
	}
}
