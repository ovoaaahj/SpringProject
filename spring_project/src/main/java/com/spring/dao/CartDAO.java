package com.spring.dao;

import java.util.List;
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.vo.CartVO;

public class CartDAO extends DBConn{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace = "mapper.mypage";
	
	/**
	 * 장바구니 조회 - 페이징 처리
	
	public ArrayList<CartVO> getList(String wid, int start, int end){
		ArrayList<CartVO> list = new ArrayList<CartVO>();
	
		try {
			String sql="select rno, c.wid, p.pid, p.pmphoto, p.ptitle, p.pkind1, p.pkind2"
					+ " from (select rownum rno, c.wid, p.pid, p.pmphoto, p.ptitle, p.pkind1, p.pkind2 from coffee_cart c, product p where c.pid = p.pid and c.wid=?)"
					+ " where rno between ? and ?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, wid);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
		        CartVO vo = new CartVO();
		        vo.setPid(rs.getString(1));
		        vo.setPmphoto(rs.getString(2));
		        vo.setPtitle(rs.getString(3));
		        vo.setPkind1(rs.getString(4));
		        vo.setPkind2(rs.getString(5));
		        list.add(vo);
		    }
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	 */

	/**
	 * 장바구니 조회
	 */
	public ArrayList<CartVO> getList(String wid){
		List<CartVO> list = sqlSession.selectList(namespace+".cartlist", wid);
		return (ArrayList<CartVO>)list;
		/*ArrayList<CartVO> list = new ArrayList<CartVO>();
	
		try {
			String sql="select p.pid, p.pmphoto, p.ptitle, p.pkind1, p.pkind2"
					+ " from coffee_cart c, product p "
					+ " where c.pid = p.pid and c.wid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, wid);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
		        CartVO vo = new CartVO();
		        vo.setPid(rs.getString(1));
		        vo.setPmphoto(rs.getString(2));
		        vo.setPtitle(rs.getString(3));
		        vo.setPkind1(rs.getString(4));
		        vo.setPkind2(rs.getString(5));
		        list.add(vo);
		    }
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;*/
	}
	
	/**
	 * 장바구니 저장하기
	 */
	public boolean getPickContent(String wid,String pid) {
		boolean result = false;
		
		try {
			String sql = "insert into coffee_cart values('c_'||sequ_cart.nextval,?)";
			getPreparedStatement(sql);
			pstmt.setString(1,pid);
			
			int val = pstmt.executeUpdate();
			
			if(val != 0) {
				result = true;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * 장바구니 삭제하기 
	 */
	public int getDelete(String wid,String pid) {
		int result = 0;
		try {
			String sql = "delete from coffee_cart where wid=? and pid=?";
			getPreparedStatement(sql);
			pstmt.setString(1,wid);
			pstmt.setString(2,pid);
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
}
