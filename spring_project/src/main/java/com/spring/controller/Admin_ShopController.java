package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Admin_ShopController {
	/**
	 * �μ�Ʈ proc
	 */
	@RequestMapping(value="/shop_insert_proc.do",method = RequestMethod.POST)
	public ModelAndView shop_insert_proc(){
		ModelAndView mv = new ModelAndView();
		
		return mv;
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
