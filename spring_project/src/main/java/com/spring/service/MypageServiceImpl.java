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
	 * ��ü ����Ʈ
	 */
	@Override
	public ModelAndView buying_list(String rpage,String id) {
		//DB���� ���� ������.
		 ModelAndView mv = new ModelAndView();
		// CgvNoticeDAO dao = new CgvNoticeDAO();
			
			
			//1. ������ ��������
			/* String rpage = request.getParameter("rpage"); */
			
			//2-1. ���������� ���� star, end count ���ϱ�
			//1������(1~10), 2������(11~20) ...
			int start = 0;
			int end = 0;
			int pageSize = 5; // �� �������� ��µǴ� row
			int pageCount = 1; // ��ü ������ �� : ��ü ����Ʈ row / �� �������� ��µǴ� row
			int dbCount = RealBuyDAO.getListCount(id); // DB���� �� ��ü row �� ���
			int reqPage = 1; // ��û ������
			
			//2-2. ��ü������ �� ���ϱ�
			if(dbCount % pageSize == 0){
			   pageCount = dbCount / pageSize;
			} else {
			   pageCount = dbCount / pageSize + 1;
			}
			
			//2-3. start, end �� ���ϱ�
			if(rpage != null){
			   reqPage = Integer.parseInt(rpage);
			   //start = (��û������ - 1) * �������� ����� + 1;
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
	 * ���û���
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
