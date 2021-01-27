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
			//DB������ ����
		   CoffeeMemberDAO dao = new CoffeeMemberDAO();
		   boolean join_result = dao.getInsert(vo);
		   
		   if(join_result){
		      //ȸ�����Լ���(views���� depth�� ���)
		      result = "index";
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
	public String join() {
		return "/join/join";
	}
}
