package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.ShopService;
import com.spring.vo.BuygoVO;
import com.spring.vo.RealBuyVO;

@Controller
public class ShopController {
	@Autowired
	private ShopService shopService;
	
	@RequestMapping(value = "/shopMain2.do", method = RequestMethod.GET)
	public String shopMain2(String rpage){
		return "shop/shopMain2";
	}// shopmain2

	
	/** product_list_proc */
	@ResponseBody
	@RequestMapping(value = "/product_list_proc.do", produces="application/json;charset=UTF-8",method = RequestMethod.GET)
	public String product_list_proc(String sname, String svalue, String rpage) {
		return shopService.getSearchList(sname,svalue,rpage);
	}  

	
	
	@RequestMapping(value = "/shopMain3_1.do", method = RequestMethod.GET)
	public ModelAndView shopMain3_1(String pkind1,String rpage) {
		return shopService.getList(pkind1,rpage);
	}
	
	@RequestMapping(value = "/shopMain3_2.do", method = RequestMethod.GET)
	public ModelAndView shopMain3_2(String pkind1,String pkind2,String rpage) {
		return shopService.getLists(pkind1, pkind2,rpage);
	}
	


	@RequestMapping(value = "/shopContent.do", method = RequestMethod.GET)
	public ModelAndView shopContent(String pid) {
		
		return shopService.getProductContent(pid);
	}
	@RequestMapping(value = "/shopBuylist.do", method = RequestMethod.POST)
	public ModelAndView shopBuylist(BuygoVO vo,HttpSession session) {
		
		return shopService.shopBuylist(vo,session);
	}
	
	@RequestMapping(value = "/product_buy_success.do", method = RequestMethod.POST)
	public ModelAndView product_buy_success(RealBuyVO vo) {
			
		return shopService.product_buy_success(vo);
	}


}