package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dao.CoffeeMemberDAO;
import com.spring.service.MemberServiceImpl;
import com.spring.vo.CoffeeMemberVO;
import com.spring.vo.SessionVO;

@Controller
public class LoginController {
	@Autowired
	private MemberServiceImpl memberService;
	/**
	 * �α׾ƿ�
	 */
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		if(session.getAttribute("id") != null){
			session.invalidate();
		}
		return "index";
	}
	/**
	 * �α��� ó��
	 */
	@RequestMapping(value="/login_proc.do", method=RequestMethod.POST)
	public ModelAndView login_proc(CoffeeMemberVO vo, HttpSession session) {
		return memberService.getResultLogin(vo, session);
	}
	
	/**
	 * �α���ȭ��
	 * @return
	 */
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login() {
		return "/login/login";
	}
}
