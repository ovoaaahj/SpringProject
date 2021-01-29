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
	 * �α��� ó��
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
	 * ���̵� �ߺ�üũ
	 */
	@Override
	public String getResultIdCheck(String id) {
		int result = coffee_memberDAO.getIdCheck(id);
		return String.valueOf(result);
	}
	
	/**
	 * ȸ������ ó��
	 */
	@Override
	public String getResultJoin(CoffeeMemberVO vo) {
		String result = "";
		//DB������ ����
	   boolean join_result = coffee_memberDAO.getInsert(vo);
	   
	   if(join_result){
	      //ȸ�����Լ���(views���� depth�� ���)
	      result = "index";
	   }else{
	      //ȸ�����Խ���- ���� ������ �����߻�: ������������ ������ ������ ȣ��
	      result = "errorPage";
	   }  
	   return result;
	}
	
}
















