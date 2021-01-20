package com.spring.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dao.AdminProductDAO;
import com.spring.vo.ProductVO;

public class AdminShopServiceImpl implements AdminShopService{
	@Autowired
	private AdminProductDAO AdminProductDAO;
	
	public ModelAndView getList() {
		ModelAndView mv = new ModelAndView();
		
		ArrayList<ProductVO> list = AdminProductDAO.getList();
		
		mv.addObject("list",list);
		
		mv.setViewName("admin/shop/Product_list");
		
		return mv;
	}
	
	public ModelAndView getDelete(String pid) {

		ModelAndView mv = new ModelAndView();
		
		ProductVO vo = AdminProductDAO.getDelete(pid);
		
		mv.addObject("vo",vo);
		mv.setViewName("admin/shop/Product_delete");
		
		return mv;
	}
	
	/**
	 * 삭제진행
	 */
	public ModelAndView getResultDelete(String pid){
		ModelAndView mv = new ModelAndView();
		
		boolean result=AdminProductDAO.getResultDelete(pid);
		
		if(result) {
			mv.setViewName("redirect:/admin/product_list.do");
		}
		
		return mv;
		
	}
	
	public ModelAndView getResultInsert(ProductVO vo) {
		ModelAndView mv = new ModelAndView();
		
		boolean result = false;
		result = AdminProductDAO.productInsert(vo);
		
		if(result) {
			mv.setViewName("admin/shop/Product_list");
		}else {
			mv.setViewName("error");
		}
		return mv;
		
	}
}
