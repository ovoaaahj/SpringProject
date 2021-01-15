package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dao.AdminProductDAO;
import com.spring.vo.ProductVO;

@Controller
public class Admin_ShopController {
	/**
	 * 인서트 proc
	 */
	@RequestMapping(value="/shop_insert_proc.do",method = RequestMethod.POST)
	public String shop_insert_proc(ProductVO vo){
		AdminProductDAO dao = new AdminProductDAO();
		String go="";
		
		boolean result = false;
		result = dao.productInsert();
		
		if(result) {
			go="admin/shop/Product_list";
		}else {
			go="error";
		}
		return go;
	}
	
	
	/**
	 * 상품 인서트창 경로
	 * @return
	 */
	@RequestMapping(value = "/admin_product_insert.do", method = RequestMethod.GET)
	public String product_insert() {
		return "admin/shop/Product_insert";
	}// shopmain2
}
