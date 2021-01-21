package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.dao.CoffeeMemberDAO;
import com.spring.vo.CoffeeMemberVO;
import com.spring.vo.SessionVO;

@Controller
public class LoginController {
	/**
	 * �α׾ƿ�
	 */
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		String result = "";
		if(svo != null) {
			session.invalidate();
			result = "index";
		}else {
			result = "errorPage";
		}
		
		return "index";
	}
	/**
	 * �α��� ó��
	 * @return
	 */
//	@RequestMapping(value="/login_proc.do",method=RequestMethod.POST)
//	public String login_proc(CoffeeMemberVO vo, HttpSession session) {
		//JSP�� ��Ʈ�� ��ü�� ��Ʈ�ѷ��� �Ķ���ͷ� �Ѿ�� �� ����. 
		//��, ���� Ŭ����Ÿ������ �޾ƾ� ��.
		
//		CoffeeMemberDAO dao = new CoffeeMemberDAO();
	/**	SessionVO svo = dao.getLogin(vo); 
		String result = "";
		
		if(svo.getResult() != 0) {
			session.setAttribute("svo",svo);
			result = "index";
		}else {
			result = "/login/loginFail";
		}
		return result; */
//	}
	
	/**
	 * �α���ȭ��
	 * @return
	 */
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login() {
		return "/login/login";
	}
}
