package com.spring.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.spring.dao.CoffeeMemberDAO;
import com.spring.vo.CoffeeMemberVO;
import com.spring.vo.SessionVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private CoffeeMemberDAO coffee_memberDAO;
	
	
	/**
	 * 회원리스트 출력 - 검색기능 처리
	 */
	public String getMemberListAjaxProc(String sname, String svalue, String rpage) {
			CoffeeMemberDAO dao = new CoffeeMemberDAO();
		
		//String sname = request.getParameter("sname");
		//String svalue = request.getParameter("svalue");

		//start, end 구하기
		//1. 선택한 페이지값
		//String rpage = request.getParameter("rpage");
		
		//2-1. 페이지값에 따라서 start, end count 구하기
		//1페이지(1~10), 2페이지(11~20) ...
		int start = 0;
		int end = 0;
		int pageSize = 3; //한 페이지당 출력되는 row
		int pageCount = 1; //전체 페이지 수  : 전체 리스트 row /한 페이지당 출력되는 row
		int dbCount = dao.getListCount(sname, svalue); //DB연동 후 전체로우수 출력
		System.out.println("dbCount--->>" + dbCount);	
		int reqPage = 1; //요청페이지
		
		//2-2. 전체페이지 수 구하기 - 화면출력
		if(dbCount % pageSize == 0){
			pageCount = dbCount/pageSize;		
		}else{
			pageCount = dbCount/pageSize +1;
		}
		
		//2-3. start, end 값 구하기
		if(rpage != ""){
			reqPage = Integer.parseInt(rpage);
			start = (reqPage-1) * pageSize +1 ;
			end = reqPage*pageSize;	
		}else{
			start = reqPage;
			end = pageSize;
		}	
			
		ArrayList<CoffeeMemberVO> list = coffee_memberDAO.getSearchList(sname,svalue,start,end);


		JsonArray jarry = new JsonArray();
			JsonObject jdata = new JsonObject();
			Gson gson =new Gson();
		
		for(CoffeeMemberVO vo:list){
			JsonObject jobj = new JsonObject();		

			jobj.addProperty("rno", vo.getRno());  
			jobj.addProperty("id", vo.getId());  
			jobj.addProperty("name", vo.getName());  
			jobj.addProperty("hp", vo.getHp());  
			jobj.addProperty("mdate", vo.getMdate());  
			
			jarry.add(jobj);		
		}
		
		jdata.add("jlist", jarry);
		jdata.addProperty("dbcount", dbCount);
		jdata.addProperty("reqpage", reqPage);
		jdata.addProperty("pagesize", pageSize);
		
		return gson.toJson(jdata);
	}
	
	
	/**
	 *  관리자페이지 - 회원리스트 출력
	 */
	public ModelAndView getMemberListAjax() {
		ModelAndView mv= new ModelAndView();//검색기능
		mv.setViewName("/admin/member/member_list_ajax");
		return mv;
	}
	
	
	/*
	 * 아이디  찾기
	 */
	@Override
	public ModelAndView getFineId(String name,String hp) {
		ModelAndView mv = new ModelAndView();
		CoffeeMemberVO vo = coffee_memberDAO.findId(name,hp);
		if(vo != null) {
			mv.addObject("id", vo.getId());
			mv.setViewName("/find_id_pw/find_id_pw");
		}else {
			mv.addObject("failId", "failId");
			mv.setViewName("/find_id_pw/find_id_pw");
		}
		return mv;
	}
	/*
	 * 비밀번호  찾기
	 */
	@Override
	public ModelAndView getFindPass(String id) {
		ModelAndView mv = new ModelAndView();
		CoffeeMemberVO vo = coffee_memberDAO.findPass(id);
		if(vo != null) {
			mv.addObject("pass", vo.getPass());
			mv.setViewName("/find_id_pw/find_id_pw");
		}else {
			mv.addObject("failPass", "failPass");
			mv.setViewName("/find_id_pw/find_id_pw");
		}
		return mv;
	}
	/*
	 * 이름 result 찾기
	 */
	@Override
	public String getResultName(String name) {
		int result = coffee_memberDAO.findName_result(name);
		return String.valueOf(result);
	}
	/*
	 * 전화번호 result 찾기
	 */
	@Override
	public String getResultHp(String hp) {
		int result = coffee_memberDAO.findHp_result(hp);
		return String.valueOf(result);
	}
	/**
	 * 로그인 처리
	 */
	@Override
	public String getResultLogin(CoffeeMemberVO vo, HttpSession session) {
		SessionVO svo = coffee_memberDAO.getLogin(vo);
		String result = "";

		if(svo.getResult() != 0) {
			session.setAttribute("svo", svo);
			result = "index";
		}else {
			result = "errorPage";
		}

		return result;
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