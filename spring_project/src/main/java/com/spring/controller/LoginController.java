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
	 * 로그아웃
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
	 * 로그인 처리
	 * @return
	 */
//	@RequestMapping(value="/login_proc.do",method=RequestMethod.POST)
//	public String login_proc(CoffeeMemberVO vo, HttpSession session) {
		//JSP의 빌트인 객체는 컨트롤러의 파라미터로 넘어올 수 있음. 
		//단, 원래 클래스타입으로 받아야 함.
		
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
	 * 로그인화면
	 * @return
	 */
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login() {
		return "/login/login";
	}
}
