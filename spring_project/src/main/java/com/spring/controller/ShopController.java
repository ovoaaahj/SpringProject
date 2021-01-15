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
	
	
	@RequestMapping(value = "/dbtest.do", method = RequestMethod.GET)
	public String dbtest() {
		// 0 ---> ����̹��غ�
		// 1
		String result = "";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2
			String url = "jdbc:oracle:thin:@localhost:1521";
			String user = "coffee";
			String pass = "coffee";
			Connection conn = DriverManager.getConnection(url, user, pass);
			// 3
			Statement stmt = conn.createStatement();
			// Statement pstmt=conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery("select empno,ename from emp");
			while (rs.next()) {
				System.out.println("empno :" + rs.getString(1));
				System.out.println("ename :" + rs.getString(2));
			}
			result = "index";
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}// dbtest

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

		// list ��ü�� �����͸� JSON ��ü�� ��ȯ�۾� �ʿ� ---> JSON ���̺귯�� ��ġ(gson)
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
			jobj.addProperty("pprice", vo.getPprice());
			jobj.addProperty("pkind1", vo.getPkind1());
			jobj.addProperty("pkind2", vo.getPkind2());
		
			jarray.add(jobj);
		}
		
		
		jdata.add("jlist", jarray);
		
		

		
		return gson.toJson(jdata); // gson.toJson(��ȯ�� ��ü);

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
