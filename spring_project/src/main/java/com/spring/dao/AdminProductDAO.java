package com.spring.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.spring.vo.ProductVO;

public class AdminProductDAO extends DBConn {
	/**
	 * 삭제 진행하기
	 */
	public boolean getResultDelete(String pid) {
		boolean result = false;
		
		try {
			String sql ="delete from product where pid =? ";
			getPreparedStatement(sql);
			pstmt.setString(1, pid);
			int val = pstmt.executeUpdate();
			if(val != 0) {
				result = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * 삭제물품 정보가져오기
	 */
	public ProductVO getDelete(String pid) {
		ProductVO vo = new ProductVO();
		
		try {
			String sql="select pid,ptitle,pmphoto,pprice100 from product where pid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, pid);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo.setPid(rs.getString(1));
				vo.setPtitle(rs.getString(2));
				vo.setPmphoto(rs.getString(3));
				vo.setPprice100(rs.getString(4));

			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	/**
	 * 상품 리스트 불러오기
	 */
	public ArrayList<ProductVO> getList(){
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		
		try {
			String sql="select pid,ptitle,pprice100,pkind1,pkind2,psub1 from product";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setPid(rs.getString(1));
				vo.setPtitle(rs.getString(2));
				vo.setPprice100(rs.getString(3));
				vo.setPkind1(rs.getString(4));
				vo.setPkind2(rs.getString(5));
				vo.setPsub1(rs.getString(6));
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	/**
	 * 상품 입력 
	 * @param vo
	 * @return
	 */
	public boolean productInsert(ProductVO vo) {
		boolean result = false;
		
		try {
			String sql="insert into product (pid,ptitle,pkind1,pkind2,phash,pprice100,pprice200,pprice500,pprice1000,psub1,psub2,pmphoto,pmsphoto,phphoto,phsphoto,pdate) "
					+"values ('p_'||SEQU_PRODUCT.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getPtitle());
			pstmt.setString(2, vo.getPkind1());
			pstmt.setString(3, vo.getPkind2());
			pstmt.setString(4, vo.getPhash());
			pstmt.setString(5, vo.getPprice100());
			pstmt.setString(6, vo.getPprice200());
			pstmt.setString(7, vo.getPprice500());
			pstmt.setString(8, vo.getPprice1000());
			pstmt.setString(9, vo.getPsub1());
			pstmt.setString(10, vo.getPsub2());
			pstmt.setString(11, vo.getPmphoto());
			pstmt.setString(12, vo.getPmsphoto());
			pstmt.setString(13, vo.getPhphoto());
			pstmt.setString(14, vo.getPhsphoto());
			
			int count = pstmt.executeUpdate();
			if(count != 0) {
				result=true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
		
	}
}
