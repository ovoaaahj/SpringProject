package com.spring.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dao.AdminProductDAO;
import com.spring.service.AdminShopService;
import com.spring.vo.ProductVO;

@Controller
public class Admin_ShopController {
	@Autowired
	private AdminShopService AdminShopService;
	
	/**
	 * ��������
	 */
	@RequestMapping(value="/admin/product_delete_proc.do",method = RequestMethod.GET)
	public ModelAndView product_delete_proc(String pid) {
		return AdminShopService.getResultDelete(pid);
	}
	
	/**
	 * ����â ���
	 * @return
	 */
	@RequestMapping(value = "/admin/product_delete.do", method = RequestMethod.GET)
	public ModelAndView product_delete(String pid) {
		return AdminShopService.getDelete(pid);
	}// delete.do
	
	/**
	 * ��ǰâ ��ϰ��
	 */
	@RequestMapping(value="admin/product_list.do", method = RequestMethod.GET)
	public ModelAndView admin_product_list() {
		return AdminShopService.getList();
	}
	
	/**
	 * �μ�Ʈ proc
	 */
	@RequestMapping(value="/shop_insert_proc.do",method = RequestMethod.POST)
	public ModelAndView shop_insert_proc(ProductVO vo){
		return AdminShopService.getResultInsert(vo);
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
