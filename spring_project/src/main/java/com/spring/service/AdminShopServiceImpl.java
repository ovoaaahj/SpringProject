package com.spring.service;

import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dao.ProductDAO;
import com.spring.vo.ProductVO;

public class AdminShopServiceImpl implements AdminShopService{
	@Autowired
	private ProductDAO ProductDAO;
	
	/**
	 * 리스트 가져오기
	 */
	public ModelAndView getList() {
		ModelAndView mv = new ModelAndView();
		
		ArrayList<ProductVO> list = ProductDAO.getAdminProductList();
		
		mv.addObject("list",list);
		
		mv.setViewName("admin/shop/Product_list");
		
		return mv;
	}
	

	
	/**
	 * 삭제진행
	 */
	public int getResultDelete(String[] dellist){

		return ProductDAO.getResultDelete(dellist);
	}
	
	/**
	 * insert 진행
	 */
	public ModelAndView getResultInsert(ProductVO vo,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		if(vo.getFile1().getSize() != 0) {
			// 파일 존재
		
			//rfname 중복방지 처리
			UUID uuid = UUID.randomUUID();
			System.out.println((vo.getFile1().getOriginalFilename()));
			System.out.println((uuid +"_"+vo.getFile1().getOriginalFilename()));
			
			vo.setPmphoto(vo.getFile1().getOriginalFilename());
			vo.setPmsphoto(uuid +"_"+vo.getFile1().getOriginalFilename());
			
			vo.setPhphoto(vo.getFile2().getOriginalFilename());
			vo.setPhsphoto(uuid +"_"+vo.getFile2().getOriginalFilename());
			
			boolean result = false;
			result = ProductDAO.productInsert(vo);
			
			if(result) {
				String root_path = request.getSession().getServletContext().getRealPath("/");
				String attach_path = "\\resources\\upload\\";
				
				System.out.println(root_path + attach_path + uuid +"_"+vo.getPmphoto());
				System.out.println(root_path + attach_path + uuid +"_"+vo.getPhphoto());
				try {
					
				File file1 
				= new File(root_path + attach_path +vo.getPmsphoto());
				vo.getFile1().transferTo(file1);
				
				File file2 
				= new File(root_path + attach_path +vo.getPhsphoto());
				vo.getFile2().transferTo(file2);
				
				
				}catch(Exception e) {
					e.printStackTrace();
				}
				
				
				mv.setViewName("redirect://admin/product_list.do");
			}else {
				mv.setViewName("error");
			}
			
			
		}
		
		
		
		
		
		
		return mv;
		
	}
}
