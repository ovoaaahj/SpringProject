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
	 * ��Ϻҷ����� ��ü
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
	 * ��Ϻҷ����� ��з�
	 * @param pkind1
	 * @return
	 */
	public ModelAndView getList(String pkind1) {
		ModelAndView mv = new ModelAndView();
		
		ArrayList<ProductVO> list = productDAO.getList(pkind1);
		
		mv.addObject("list",list);
		mv.setViewName("shop/shopMain3_1");
		
		return mv;
	}
	
	/**
	 * ��Ϻҷ����� �Һз�
	 * @param pkind1
	 * @param pkind2
	 * @return
	 */
	public ModelAndView getList(String pkind1,String pkind2) {
		ModelAndView mv = new ModelAndView();
		
		ArrayList<ProductVO> list = productDAO.getList(pkind1,pkind2);
		
		mv.addObject("list",list);
		mv.setViewName("shop/shopMain3_2");
		
		return mv;
	}
	
	
}
