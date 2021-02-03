package com.spring.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.vo.ProductVO;

public class ProductDAO extends DBConn{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.shop";
	
	/**
	 * 삭제 진행하기
	 */
	public int getResultDelete(String[] dellist) {
		
		return sqlSession.delete(namespace+".deleteproduct",dellist);	
	}
	
	
	
	/**
	 * 상품 리스트 불러오기
	 */
	public ArrayList<ProductVO> getAdminProductList(){
		List<ProductVO> list = sqlSession.selectList(namespace+".adminshoplist");
		return (ArrayList<ProductVO>) list;
	}
	
	
	/**
	 * 상품 입력 
	 * @param vo
	 * @return
	 */
	
	public boolean productInsert(ProductVO vo) {
		boolean result = false;
		int val = sqlSession.insert(namespace+".insertProduct",vo);
		if(val != 0) result = true;
		return result;
		
	}
	
	
	

	/**
	 * 전체 리스트 카운트
	 */
	public int getListCount() {
		return sqlSession.selectOne(namespace+".listcount");
	}
	

	
	
	
	
	/** 대분류 만 선택했을경우 */
	public ArrayList<ProductVO> getList(String pkind1,String start,String end){
		Map<String,String> param = new HashMap<String,String>();
		param.put("pkind1", pkind1);
		param.put("start", start);
		param.put("end", end);
		
		List<ProductVO> list = sqlSession.selectList(namespace+".shoplist1",param);
		return (ArrayList<ProductVO>)list;

	}
	
	/**
	 * 소분류 까지 선택한 경우
	 */
	
	public ArrayList<ProductVO> getLists(String pkind1,String pkind2,String start,String end){
		Map<String,String> param = new HashMap<String,String>();
		param.put("pkind1", pkind1);
		param.put("pkind2", pkind2);
		param.put("start", start);
		param.put("end", end);
		
		List<ProductVO> list = sqlSession.selectList(namespace+".shoplist2",param);
		return (ArrayList<ProductVO>) list;
	}
	
	
	
	

	/**
	 * 검색한 목록 가져오기
	 */
	public ArrayList<ProductVO> getSearchList(String sname,String svalue, String start,String end){
		
		Map<String,String> param = new HashMap<String,String>();
		
		param.put("sname", sname);
		param.put("svalue", svalue);
		param.put("start", start);
		param.put("end", end);
		
		List<ProductVO> list = sqlSession.selectList(namespace+".searchlist",param);
		
		return (ArrayList<ProductVO>) list;
		
	/**	try {
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
		
		return list; **/
	}
	
	/**
	 * 전체 로우수 가져오기
	 */
	public int getListCount(String sname,String svalue) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("sname", sname);
		param.put("svalue", svalue);
		
		return sqlSession.selectOne(namespace+".listcountajax",param);
		
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
