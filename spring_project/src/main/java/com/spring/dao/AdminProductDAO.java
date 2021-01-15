package com.spring.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.spring.vo.ProductVO;

public class AdminProductDAO extends DBConn {
	
	/**
	 * 상품 리스트 불러오기
	 */
	public ArrayList<ProductVO> getList(){
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		
		try {
			String sql="select pid,ptitle,pprice,pkind1,pkind2,psub1 from product";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setPid(rs.getString(1));
				vo.setPtitle(rs.getString(2));
				vo.setPprice(rs.getString(3));
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
			String sql="insert into product (pid,ptitle,pkind1,pkind2,phash,pprice,psub1,psub2,pmphoto,pdate) "
					+"values ('p_'||SEQU_PRODUCT.nextval,?,?,?,?,?,?,?,?,sysdate)";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getPtitle());
			pstmt.setString(2, vo.getPkind1());
			pstmt.setString(3, vo.getPkind2());
			pstmt.setString(4, vo.getPhash());
			pstmt.setString(5, vo.getPprice());
			pstmt.setString(6, vo.getPsub1());
			pstmt.setString(7, vo.getPsub2());
			pstmt.setString(8, vo.getPmphoto());
			
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
