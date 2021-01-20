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
	 * 회원가입 - ID 중복체크 처리
	 */
	@RequestMapping(value="/idCheck.do",method=RequestMethod.GET)
	@ResponseBody
	public String idCheck(String id) {
		
		CoffeeMemberDAO dao = new CoffeeMemberDAO();
		int result = dao.getIdCheck(id);
		
		return String.valueOf(result);
	}
	/**
	 * 회원가입 처리
	 */
	@RequestMapping(value="/join_proc.do", method=RequestMethod.POST)
	public String join_proc(CoffeeMemberVO vo) {
		String result = "";
	/*	String id,pass,name,gender,email,email_agr,addr1,addr2
		,hp1,hp2,hp3,cp1,cp2,cp3,job,intro, mdate;
	String[] hobby;
	String addr, hp, cp, hobby_list; */
	
		//DB연동후 저장
	    CoffeeMemberDAO dao = new CoffeeMemberDAO();
	   boolean join_result=dao.getInsert(vo);
	   
	   if(join_result){
	      //회원가입성공(views기준 depth를 고려)
	      result = "join/joinSuccess";
	   }else{
	      //회원가입실패- 서버 연동시 에러발생: 에러페이지를 별도로 생성후 호출
	      result = "errorPage";
	   }  
	   return result;
	}

	/**
	 * 회원가입 사용자 화면
	 * @return
	 */
	
	@RequestMapping(value="/join.do", method=RequestMethod.GET)
	public String login() {
		return "/join/join";
	}
}
