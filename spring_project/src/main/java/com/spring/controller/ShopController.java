package com.spring.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.spring.dao.ProductDAO;
import com.spring.vo.ProductVO;

@Controller
public class ShopController {

	@RequestMapping(value = "/shopMain2.do", method = RequestMethod.GET)
	public String shopMain2() {
		return "shop/shopMain2";
	}// shopmain2

	/** product_list_proc */
	
	@RequestMapping(value = "/product_list_proc.do", produces="application/json;charset=UTF-8",method = RequestMethod.GET)
	@ResponseBody
	public String product_list_proc(String sname, String svalue) {
		
		ProductDAO dao = new ProductDAO();
		
	
		ArrayList<ProductVO> list = dao.getSearchList(sname, svalue);

		// list 객체의 데이터를 JSON 객체로 변환작업 필요 ---> JSON 라이브러리 설치(gson)
		JsonArray jarray = new JsonArray();
		JsonObject jdata = new JsonObject();
		Gson gson = new Gson();

		for (ProductVO vo : list) {
			JsonObject jobj = new JsonObject();
			jobj.addProperty("rno", vo.getRno());
			jobj.addProperty("pid", vo.getPid());
			jobj.addProperty("pmphoto", vo.getPmphoto());
			jobj.addProperty("psub1", vo.getPsub1());
			jobj.addProperty("psub2", vo.getPsub2());
			jobj.addProperty("psub3", vo.getPsub3());
			jobj.addProperty("ptitle", vo.getPtitle());
			jobj.addProperty("phash", vo.getPhash());
			jobj.addProperty("pprice", vo.getPprice100());
			jobj.addProperty("pkind1", vo.getPkind1());
			jobj.addProperty("pkind2", vo.getPkind2());
		
			jarray.add(jobj);
		}
		
		
		jdata.add("jlist", jarray);
		
		

		
		return gson.toJson(jdata); // gson.toJson(변환할 객체);

	}  


	
	@RequestMapping(value = "/shopMain3.do", method = RequestMethod.GET)
	public ModelAndView shopMain3(String pkind1,String pkind2) {
		ModelAndView mv = new ModelAndView();
		
		ProductDAO dao = new ProductDAO();
		
		ArrayList<ProductVO> list = dao.getList();
		
		mv.addObject("list",list);
		mv.setViewName("shop/shopMain3");
		
		return mv;
	}
	
	
	@RequestMapping(value = "/shopMain3_1.do", method = RequestMethod.GET)
	public ModelAndView shopMain3_1(String pkind1) {
		ModelAndView mv = new ModelAndView();
		
		ProductDAO dao = new ProductDAO();
		System.out.println(pkind1);
		ArrayList<ProductVO> list = dao.getList(pkind1);
		
		mv.addObject("list",list);
		mv.setViewName("shop/shopMain3_1");
		
		return mv;
	}
	
	@RequestMapping(value = "/shopMain3_2.do", method = RequestMethod.GET)
	public ModelAndView shopMain3_2(String pkind1,String pkind2) {
		ModelAndView mv = new ModelAndView();
		
		ProductDAO dao = new ProductDAO();
		
		ArrayList<ProductVO> list = dao.getList(pkind1,pkind2);
		
		mv.addObject("list",list);
		mv.setViewName("shop/shopMain3_2");
		
		return mv;
	}
	
	@RequestMapping(value = "/shopMain.do", method = RequestMethod.GET)
	public String shopMain() {
		return "shop/shopMain";
	}

	@RequestMapping(value = "/shopContent.do", method = RequestMethod.GET)
	public String shopContent() {
		return "shop/shopContent";
	}
}
