package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.MemberServiceImpl;
import com.spring.vo.CoffeeMemberVO;

@Controller
public class FindIdPwController {
	@Autowired
	private MemberServiceImpl memberService;
	
	/**
	 * 이름찾기 - 이름 result 찾기
	 */
	@RequestMapping(value="/nameCheck.do",method=RequestMethod.GET)
	@ResponseBody
	public String findResultName(String name) {
		return memberService.getResultName(name);
	}
	
	/**
	 * 아이디 비밀번호 찾기 - 전화번호 result 찾기
	 */
	@RequestMapping(value="/hpCheck.do", method=RequestMethod.GET)
	@ResponseBody
	public String findResultHp(String hp) {
		return memberService.getResultHp(hp);
	} 
	/**
	 * 아이디 비밀번호 찾기 - 아이디  찾기
	 */
	@RequestMapping(value="/find_id.do", method=RequestMethod.POST)
	public ModelAndView findId(String name,String hp) {
		return memberService.getFineId(name,hp);
	} 
	/**
	 * 아이디 비밀번호 찾기 - 비밀번호  찾기
	 */
	@RequestMapping(value="/find_pw.do", method=RequestMethod.POST)
	public ModelAndView findPass(String id) {
		return memberService.getFindPass(id);
	} 
	
	/**
	 * 아이디 비밀번호 찾기
	 */
	@RequestMapping(value="/find_id_pw.do", method=RequestMethod.GET)
	public String findidpw() {
		return "/find_id_pw/find_id_pw";
	} 

}
