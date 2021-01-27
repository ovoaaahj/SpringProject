package com.spring.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dao.ProductDAO;
import com.spring.vo.ProductVO;

@Service("shopService")
public class ShopService {
	@Autowired
	private ProductDAO productDAO;
	
	/**
	 * 목록불러오기 전체
	 * @return
	 */
	public ModelAndView getList() {
		ModelAndView mv = new ModelAndView();
		
		ArrayList<ProductVO> list = productDAO.getList();
		
		mv.addObject("list",list);
		mv.setViewName("shop/shopMain3");
		
		return mv;
	}
	
	/**
	 * 목록불러오기 대분류
	 * @param pkind1
	 * @return
	 */
	public ModelAndView getList(String pkind1,String rpage) {
		ModelAndView mv = new ModelAndView();
		
		int start = 0;
		int end = 0;
		int pageSize = 5; //한 페이지당 출력되는 row
		int pageCount = 1; //전체 페이지 수  : 전체 리스트 row /한 페이지당 출력되는 row
		int dbCount = productDAO.getListCount(); //DB연동 후 전체로우수 출력
		int reqPage = 1; //요청페이지
		
		//2-2. 전체페이지 수 구하기 - 화면출력
		if(dbCount % pageSize == 0){
			pageCount = dbCount/pageSize;		
		}else{
			pageCount = dbCount/pageSize +1;
		}
		
		//2-3. start, end 값 구하기
		if(rpage != null){
			reqPage = Integer.parseInt(rpage);
			start = (reqPage-1) * pageSize +1 ;
			end = reqPage*pageSize;	
		}else{
			start = reqPage;
			end = pageSize;
		}


		
		ArrayList<ProductVO> list = productDAO.getList(pkind1,String.valueOf(start),String.valueOf(end));
		
		mv.addObject("list", list);
		mv.addObject("dbCount", dbCount);
		mv.addObject("pageSize", pageSize);
		mv.addObject("reqPage", reqPage);
		mv.setViewName("shop/shopMain3_1");
	
		
		return mv;
	}
	
	/**
	 * 목록불러오기 소분류
	 * @param pkind1
	 * @param pkind2
	 * @return
	 */
	public ModelAndView getLists(String pkind1,String pkind2,String rpage) {
		ModelAndView mv = new ModelAndView();
		

		int start = 0;
		int end = 0;
		int pageSize = 5; //한 페이지당 출력되는 row
		int pageCount = 1; //전체 페이지 수  : 전체 리스트 row /한 페이지당 출력되는 row
		int dbCount = productDAO.getListCount(); //DB연동 후 전체로우수 출력
		int reqPage = 1; //요청페이지
		
		//2-2. 전체페이지 수 구하기 - 화면출력
		if(dbCount % pageSize == 0){
			pageCount = dbCount/pageSize;		
		}else{
			pageCount = dbCount/pageSize +1;
		}
		
		//2-3. start, end 값 구하기
		if(rpage != null){
			reqPage = Integer.parseInt(rpage);
			start = (reqPage-1) * pageSize +1 ;
			end = reqPage*pageSize;	
		}else{
			start = reqPage;
			end = pageSize;
		}


		
		ArrayList<ProductVO> list = productDAO.getLists(pkind1,pkind2,String.valueOf(start),String.valueOf(end));
		
		mv.addObject("list",list);
		mv.setViewName("shop/shopMain3_2");
		
		return mv;
	}
	
	
}
