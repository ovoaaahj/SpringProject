package com.spring.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.vo.ProductVO;

public class ProductDAO extends DBConn{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.shop";
	
	/**
	 * 전체 리스트 카운트
	 */
	public int getListCount() {
		int result = 0;
		
		try {
			String sql = "select count(*) from product";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	
	/** 대분류 만 선택했을경우 */
	public ArrayList<ProductVO> getList(String pkind1){
		List<ProductVO> list = sqlSession.selectList(namespace+".shoplist1",pkind1);
		return (ArrayList<ProductVO>)list;
		
		
/**		try {
			String sql="select pid,pmphoto,pmsphoto,psub1,psub1s,psub2,psub2s,psub3,psub3s,phash,pprice100,pdate,ptitle from product where pkind1=?";
			getPreparedStatement(sql);
			pstmt.setString(1, pkind1);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ProductVO vo = new ProductVO();
				vo.setPid(rs.getString(1));
				vo.setPmphoto(rs.getString(2));
				vo.setPmsphoto(rs.getString(3));
				vo.setPsub1(rs.getString(4));
				vo.setPsub1s(rs.getString(5));
				vo.setPsub2(rs.getString(6));
				vo.setPsub2s(rs.getString(7));
				vo.setPsub3(rs.getString(8));
				vo.setPsub3s(rs.getString(9));
				vo.setPhash(rs.getString(10));
				vo.setPprice100(rs.getString(11));
				vo.setPdate(rs.getString(12));
				vo.setPtitle(rs.getString(13));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;  */
	}
	
	/**
	 * 소분류 까지 선택한 경우
	 */
	
	public ArrayList<ProductVO> getList(String pkind1,String pkind2){
		
		 ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		
		try {
			String sql="select pid,pmphoto,pmsphoto,psub1,psub1s,psub2,psub2s,psub3,psub3s,phash,pprice100,pdate,ptitle from product where pkind1=? and pkind2=?";
			getPreparedStatement(sql);
			pstmt.setString(1, pkind1);
			pstmt.setString(2, pkind2);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ProductVO vo = new ProductVO();
				vo.setPid(rs.getString(1));
				vo.setPmphoto(rs.getString(2));
				vo.setPmsphoto(rs.getString(3));
				vo.setPsub1(rs.getString(4));
				vo.setPsub1s(rs.getString(5));
				vo.setPsub2(rs.getString(6));
				vo.setPsub2s(rs.getString(7));
				vo.setPsub3(rs.getString(8));
				vo.setPsub3s(rs.getString(9));
				vo.setPhash(rs.getString(10));
				vo.setPprice100(rs.getString(11));
				vo.setPdate(rs.getString(12));
				vo.setPtitle(rs.getString(13));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list; 
	}
	
	
	/**
	 * 검색한 목록 가져오기
	 */
	public ArrayList<ProductVO> getSearchList(String sname,String svalue){
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		
		try {
			String str="";
			if(sname.equals("total")){
				str="";
				}else{
				str="where "+sname+"='"+ svalue+"'";
			}
			String sql = "select * from"
						+"(select rownum rno, pid,pmphoto,psub1,psub2,psub3,ptitle,phash,pprice100,pkind1,pkind2 from product "
						+ str+ ")";
			getStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setRno(rs.getInt(1));
				vo.setPid(rs.getString(2));
				vo.setPmphoto(rs.getString(3));
				vo.setPsub1(rs.getString(4));
				vo.setPsub2(rs.getString(5));
				vo.setPsub3(rs.getString(6));
				vo.setPtitle(rs.getString(7));
				vo.setPhash(rs.getString(8));
				vo.setPprice100(rs.getString(9));
				vo.setPkind1(rs.getString(10));
				vo.setPkind2(rs.getString(11));
				
			
				
				list.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	

	/**
	 * 검색한 목록 가져오기
	 */
	public ArrayList<ProductVO> getSearchList(String sname,String svalue, String start,String end){
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		
		try {
			String str="";
			if(sname != "total") {
				str="where "+sname+"='"+ svalue+"'";
			}
			String sql = "select * from"
						+"(select rownum rno, pid,pmphoto,psub1,psub2,psub3,ptitle,phash,pprice100,pkind1,pkind2 from product "
						+ str+ ")"+"and between "+start +"and"+end ;
			getStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setRno(rs.getInt(1));
				vo.setPid(rs.getString(2));
				vo.setPmphoto(rs.getString(3));
				vo.setPsub1(rs.getString(4));
				vo.setPsub2(rs.getString(5));
				vo.setPsub3(rs.getString(6));
				vo.setPtitle(rs.getString(7));
				vo.setPhash(rs.getString(8));
				vo.setPprice100(rs.getString(9));
				vo.setPkind1(rs.getString(10));
				vo.setPkind2(rs.getString(12));
				
				list.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * 전체 로우수 가져오기
	 */
	public int getListCount(String sname,String svalue) {
		int count = 0;
		
		try {
			String str ="";
			if(!sname.equals("total")) {
				str = " where "+sname+"='"+svalue+"'";
			}
			
			String sql = "select * from product "+str;
			getStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				count = rs.getInt(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
	
	
	/**
	 * product 리스트 가져오는거 연습
	 * @return
	 */
	public ArrayList<ProductVO> getList(){
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		
		try {
			String sql="select pid,pmphoto,pmsphoto,psub1,psub1s,psub2,psub2s,psub3,psub3s,phash,pprice100,pdate,ptitle from product";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ProductVO vo = new ProductVO();
				vo.setPid(rs.getString(1));
				vo.setPmphoto(rs.getString(2));
				vo.setPmsphoto(rs.getString(3));
				vo.setPsub1(rs.getString(4));
				vo.setPsub1s(rs.getString(5));
				vo.setPsub2(rs.getString(6));
				vo.setPsub2s(rs.getString(7));
				vo.setPsub3(rs.getString(8));
				vo.setPsub3s(rs.getString(9));
				vo.setPhash(rs.getString(10));
				vo.setPprice100(rs.getString(11));
				vo.setPdate(rs.getString(12));
				vo.setPtitle(rs.getString(13));
				
				list.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
