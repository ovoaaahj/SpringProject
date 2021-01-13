package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShopController {
	@RequestMapping(value="/shopMain.do",method=RequestMethod.GET)
	public String shopMain() {
		return "shop/shopMain";
	}
	@RequestMapping(value="/shopContent.do",method=RequestMethod.GET)
	public String shopContent() {
		return "shop/shopContent";
	}
}
