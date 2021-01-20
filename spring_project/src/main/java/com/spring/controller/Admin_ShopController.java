package com.spring.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dao.AdminProductDAO;
import com.spring.vo.ProductVO;

@Controller
public class Admin_ShopController {
	
	/**
	 * ��������
	 */
	@RequestMapping(value="/admin/product_delete_proc.do",method = RequestMethod.GET)
	public ModelAndView product_delete_proc(String pid) {
		ModelAndView mv = new ModelAndView();
		
		AdminProductDAO dao = new AdminProductDAO();
		boolean result=dao.getResultDelete(pid);
		
		if(result) {
			mv.setViewName("redirect:/admin/product_list.do");
		}
		
		return mv;
	}
	
	/**
	 * ����â ���
	 * @return
	 */
	@RequestMapping(value = "/admin/product_delete.do", method = RequestMethod.GET)
	public ModelAndView product_delete(String pid) {
		
		ModelAndView mv = new ModelAndView();
		AdminProductDAO dao = new AdminProductDAO();
		
		ProductVO vo = dao.getDelete(pid);
		
		mv.addObject("vo",vo);
		mv.setViewName("admin/shop/Product_delete");
		
		return mv;
	}// delete.do
	
	/**
	 * ��ǰâ ��ϰ��
	 */
	@RequestMapping(value="admin/product_list.do", method = RequestMethod.GET)
	public ModelAndView admin_product_list() {
		
		
		ModelAndView mv = new ModelAndView();
		AdminProductDAO dao = new AdminProductDAO();
		
		ArrayList<ProductVO> list = dao.getList();
		
		mv.addObject("list",list);
		
		mv.setViewName("admin/shop/Product_list");
		
		return mv;
		
	}
	
	/**
	 * �μ�Ʈ proc
	 */
	@RequestMapping(value="/shop_insert_proc.do",method = RequestMethod.POST)
	public String shop_insert_proc(ProductVO vo){
		AdminProductDAO dao = new AdminProductDAO();
		String go="";
		
		boolean result = false;
		result = dao.productInsert(vo);
		
		if(result) {
			go="admin/shop/Product_list";
		}else {
			go="error";
		}
		return go;
	}
	
	
	/**
	 * ��ǰ �μ�Ʈâ ���
	 * @return
	 */
	@RequestMapping(value = "/admin_product_insert.do", method = RequestMethod.GET)
	public String product_insert() {
		return "admin/shop/Product_insert";
	}// shopmain2
}
