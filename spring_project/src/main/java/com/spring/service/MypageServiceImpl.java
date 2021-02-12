package com.spring.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;


import com.spring.dao.CartDAO;
import com.spring.dao.CoffeeMemberDAO;
import com.spring.dao.RealBuyDAO;
import com.spring.vo.RealBuyVO;
@Service("mypageService")

public class MypageServiceImpl implements MypageService{
	
	@Autowired
	private CoffeeMemberDAO memberDAO;
	private CartDAO cartDAO;
	@Autowired
	private RealBuyDAO RealBuyDAO;
	
	
	/**
	 * 전체 리스트
	 */
	@Override
	public ModelAndView buying_list(String rpage,String id) {
		//DB연동 로직 들어가야함.
		 ModelAndView mv = new ModelAndView();
		// CgvNoticeDAO dao = new CgvNoticeDAO();
			
			
			//1. 선택한 페이지값
			/* String rpage = request.getParameter("rpage"); */
			
			//2-1. 페이지값에 따라서 star, end count 구하기
			//1페이지(1~10), 2페이지(11~20) ...
			int start = 0;
			int end = 0;
			int pageSize = 5; // 한 페이지당 출력되는 row
			int pageCount = 1; // 전체 페이지 수 : 전체 리스트 row / 한 페이지당 출력되는 row
			int dbCount = RealBuyDAO.getListCount(id); // DB연동 후 전체 row 수 출력
			int reqPage = 1; // 요청 페이지
			
			//2-2. 전체페이지 수 구하기
			if(dbCount % pageSize == 0){
			   pageCount = dbCount / pageSize;
			} else {
			   pageCount = dbCount / pageSize + 1;
			}
			
			//2-3. start, end 값 구하기
			if(rpage != null){
			   reqPage = Integer.parseInt(rpage);
			   //start = (요청페이지 - 1) * 한페이지 출력행 + 1;
			   start = (reqPage-1) * pageSize + 1;
			   end = reqPage * pageSize;
			} else {
			   start = reqPage;
			   end = pageSize;
			}
			
			ArrayList<RealBuyVO> list = RealBuyDAO.getList(id,start,end);
			 mv.addObject("list",list);
			 mv.addObject("dbCount",dbCount);
			 mv.addObject("pageSize",pageSize);
			 mv.addObject("reqPage",reqPage);
			 mv.setViewName("/mypage/buying/buying_list");
			 
			 
			 
		return mv;
	}
	
	
	
	public ModelAndView buyingContent(String bid) {
		ModelAndView mv = new ModelAndView();
	
		RealBuyVO vo  = RealBuyDAO.getBuyContent(bid);
	
		
		mv.addObject("vo",vo);
		mv.setViewName("shop/product_buy_success");
		return mv;
	}
	
	
	
	/**
	 * 선택삭제
	 */
	public int getSelectDelete(String[] dellist) {
		return cartDAO.getDelete(dellist);
	}
	
	public ModelAndView getdelResult(String id) {
		ModelAndView mv = new ModelAndView();
		boolean result = memberDAO.getDelete(id);
		
		if(result) {
			mv.setViewName("redirect:/delSuccess.do");
		}else {
			mv.setViewName("errorPage");
			
		}
		
		return mv;
	}
}
