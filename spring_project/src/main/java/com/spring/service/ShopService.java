package com.spring.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.spring.dao.CoffeeMemberDAO;
import com.spring.dao.ProductDAO;
import com.spring.dao.RealBuyDAO;
import com.spring.vo.BuygoVO;
import com.spring.vo.CoffeeMemberVO;
import com.spring.vo.ProductContentVO;
import com.spring.vo.ProductVO;
import com.spring.vo.RealBuyVO;

@Service("shopService")
public class ShopService {
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CoffeeMemberDAO coffee_memberDAO;
	@Autowired
	private RealBuyDAO RealBuyDAO;
	
	
	public ModelAndView product_buy_success(RealBuyVO mvo) {
		ModelAndView mv = new ModelAndView();
		boolean result = false;
		result = RealBuyDAO.getBuyInsert(mvo);
		RealBuyVO vo  = RealBuyDAO.getBuyContent(mvo.getBid());
		if(result) {
			mv.setViewName("shop/product_buy_success");
			
		}else {
			mv.setViewName("error");
		}
		
		mv.addObject("vo",vo);
		
		return mv;
	}
	
	public ModelAndView shopBuylist(BuygoVO vo, HttpSession session) {
		ModelAndView mv =new ModelAndView();
		String id = (String)session.getAttribute("id");
		CoffeeMemberVO mvo =coffee_memberDAO.getMemberContent(id);
		
		mv.addObject("mvo",mvo);
		mv.addObject("vo",vo);
		mv.addObject("id",id);
		mv.setViewName("shop/shopBuylist");
		return mv;
	}
	
	
	public ModelAndView getProductContent(String pid) {
		ModelAndView mv = new ModelAndView();
		
		ProductVO vo =productDAO.getProductContent(pid);
		ProductContentVO cvo =productDAO.Product_Content_Select(pid);

		 
		mv.addObject("vo",vo);
		mv.addObject("cvo",cvo);
		
		mv.setViewName("shop/shopContent");
		return mv;
		
		
		
		
	}
	
	
	
	/**리스트 검색 기능 */
	
	public String getSearchList(String sname, String svalue, String rpage) {
		
		//2-1. 페이지값에 따라서 start, end count 구하기
		//1페이지(1~10), 2페이지(11~20) ...
		int start = 0;
		int end = 0;
		int pageSize = 12; //한 페이지당 출력되는 row
		int pageCount = 1; //전체 페이지 수  : 전체 리스트 row /한 페이지당 출력되는 row
		int dbCount = productDAO.getListCount(sname, svalue); //DB연동 후 전체로우수 출력
		
	//System.out.println("dbCount--->>" + dbCount);	
		int reqPage = 1; //요청페이지
		
		//2-2. 전체페이지 수 구하기 - 화면출력
		if(dbCount % pageSize == 0){
			pageCount = dbCount/pageSize;		
		}else{
			pageCount = dbCount/pageSize +1;
		}
		
		//2-3. start, end 값 구하기
		if(rpage != ""){
			reqPage = Integer.parseInt(rpage);
			start = (reqPage-1) * pageSize +1 ;
			end = reqPage*pageSize;	
		}else{
			start = reqPage;
			end = pageSize;
		}	
		
		
		ArrayList<ProductVO> list = productDAO.getSearchList(sname,svalue,String.valueOf(start),String.valueOf(end));

		// list 객체의 데이터를 JSON 객체로 변환작업 필요 ---> JSON 라이브러리 설치(gson)
		JsonArray jarry = new JsonArray();
		JsonObject jdata = new JsonObject();
		Gson gson = new Gson();

		for (ProductVO vo : list) {
			JsonObject jobj = new JsonObject();
			jobj.addProperty("rno", vo.getRno());
			jobj.addProperty("pid", vo.getPid());
			jobj.addProperty("pmphoto", vo.getPmphoto());
			jobj.addProperty("pmsphoto", vo.getPmsphoto());
			jobj.addProperty("psub1", vo.getPsub1());
			jobj.addProperty("psub2", vo.getPsub2());
			jobj.addProperty("psub3", vo.getPsub3());
			jobj.addProperty("ptitle", vo.getPtitle());
			jobj.addProperty("phash", vo.getPhash());
			jobj.addProperty("pprice", vo.getPprice100());
			jobj.addProperty("pkind1", vo.getPkind1());
			jobj.addProperty("pkind2", vo.getPkind2());
		
			jarry.add(jobj);
		}
		
		jdata.add("jlist", jarry);
		jdata.addProperty("dbcount", dbCount);
		jdata.addProperty("reqpage", reqPage);
		jdata.addProperty("pagesize", pageSize);
		
		
		return gson.toJson(jdata);
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
		int pageSize = 12; //한 페이지당 출력되는 row
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
		int pageSize = 12; //한 페이지당 출력되는 row
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
