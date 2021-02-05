package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.MemberServiceImpl;

@Controller
public class Admin_memberController {

	@Autowired
	private MemberServiceImpl memberservice;
	
	/**
	 * 회원관리 - 회원 전체 리스트(ajax 호출) // ResponseBody 부분적으로 받음 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/admin/member_list_ajax_proc.do", 
			method=RequestMethod.GET,
			produces="text/plain;charset=UTF-8")
	public String member_list_ajax_proc(String sname, String svalue, String rpage) {
		return memberservice.getMemberListAjaxProc(sname, svalue, rpage); //gson.toJson(String으로 변환할 객체)
	}
	/**
	 * 회원관리 - 회원 전체 리스트
	 * @return
	 */
	@RequestMapping(value="/admin/member_list.do", method=RequestMethod.GET)
	public ModelAndView member_list(String rpage) {
		return memberservice.getMemberListAjax(); //검색기능
}

}