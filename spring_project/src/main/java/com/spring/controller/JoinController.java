package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.dao.CoffeeMemberDAO;
import com.spring.vo.CoffeeMemberVO;

@Controller
public class JoinController {
	/**
	 * ȸ������ - ID �ߺ�üũ ó��
	 */
	@RequestMapping(value="/idCheck.do",method=RequestMethod.GET)
	@ResponseBody
	public String idCheck(String id) {
		
		CoffeeMemberDAO dao = new CoffeeMemberDAO();
		int result = dao.getIdCheck(id);
		
		return String.valueOf(result);
	}
	/**
	 * ȸ������ ó��
	 */
	@RequestMapping(value="/join_proc.do", method=RequestMethod.POST)
	public String join_proc(CoffeeMemberVO vo) {
		String result = "";
	/*	String id,pass,name,gender,email,email_agr,addr1,addr2
		,hp1,hp2,hp3,cp1,cp2,cp3,job,intro, mdate;
	String[] hobby;
	String addr, hp, cp, hobby_list; */
	
		//DB������ ����
	    CoffeeMemberDAO dao = new CoffeeMemberDAO();
	   boolean join_result=dao.getInsert(vo);
	   
	   if(join_result){
	      //ȸ�����Լ���(views���� depth�� ���)
	      result = "join/joinSuccess";
	   }else{
	      //ȸ�����Խ���- ���� ������ �����߻�: ������������ ������ ������ ȣ��
	      result = "errorPage";
	   }  
	   return result;
	}

	/**
	 * ȸ������ ����� ȭ��
	 * @return
	 */
	
	@RequestMapping(value="/join.do", method=RequestMethod.GET)
	public String login() {
		return "/join/join";
	}
}
