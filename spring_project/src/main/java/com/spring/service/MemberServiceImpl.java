package com.spring.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dao.CoffeeMemberDAO;
import com.spring.vo.CoffeeMemberVO;
import com.spring.vo.SessionVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private CoffeeMemberDAO coffee_memberDAO;
	
	/**
	 * 로그인 처리
	 */
	@Override
	public ModelAndView getResultLogin(CoffeeMemberVO vo, HttpSession session) {
		//CgvMemberDAO memberDAO = new CgvMemberDAO();
		ModelAndView mv = new ModelAndView();
		SessionVO svo = coffee_memberDAO.getLogin(vo);
		
		if(svo.getResult() != 0) {
			session.setAttribute("id", vo.getId());
			mv.setViewName("index");
		}else {
			mv.addObject("result","fail");
			mv.setViewName("/login/login");
		}
		
		return mv;
	}
	/**
	 * 아이디 중복체크
	 */
	@Override
	public String getResultIdCheck(String id) {
		int result = coffee_memberDAO.getIdCheck(id);
		return String.valueOf(result);
	}
	
	/**
	 * 회원가입 처리
	 */
	@Override
	public String getResultJoin(CoffeeMemberVO vo) {
		String result = "";
		//DB연동후 저장
	   boolean join_result = coffee_memberDAO.getInsert(vo);
	   
	   if(join_result){
	      //회원가입성공(views기준 depth를 고려)
	      result = "index";
	   }else{
	      //회원가입실패- 서버 연동시 에러발생: 에러페이지를 별도로 생성후 호출
	      result = "errorPage";
	   }  
	   return result;
	}
	
}
















