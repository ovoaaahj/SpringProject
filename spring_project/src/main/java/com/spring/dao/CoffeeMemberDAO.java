package com.spring.dao;


import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.vo.CoffeeMemberVO;
import com.spring.vo.SessionVO;


public class CoffeeMemberDAO extends DBConn{

	@Autowired
	private SqlSessionTemplate sqlSession;
	private static String namespace = "mapper.mypage";
	
	private static String namespace_member="mapper.member";
	
	
	public CoffeeMemberVO getMemberContent(String id) {
	
		return sqlSession.selectOne(namespace_member+".getMemberContent", id);
	}
	
	/**
	 * 관리자페이지 - 리스트 카운트 
	 */
	public int getListCount(String sname, String svalue) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("sname", sname);
		param.put("svalue", svalue);
		return sqlSession.selectOne(namespace_member+".listcountajax", param);
	}

	/**
	 *  관리자 페이지 - 회원 검색 기능 int String valueof
	 */
	public ArrayList<CoffeeMemberVO> getSearchList(String sname, String svalue, int start, int end){
		Map<String,String> param = new HashMap<String,String>();
		param.put("sname", sname);
		param.put("svalue", svalue);
		param.put("start", String.valueOf(start));
		param.put("end", String.valueOf(end));
		
		List<CoffeeMemberVO> list = sqlSession.selectList(namespace_member+".searchlist", param);
		return (ArrayList<CoffeeMemberVO>)list;
	}		
	
	/**
	
	 * 마이페이지 - 회원정보 수정하기
	 */
    
	public boolean getUpdate(CoffeeMemberVO vo) {
		boolean result = false;
		try {
			String sql="update coffee_member set name =?, pass=?, email=?, hp=? where id=?";

			getPreparedStatement(sql);

			 pstmt.setString(1, vo.getName());
			 pstmt.setString(2, vo.getPass());
			 pstmt.setString(3, vo.getEmail());
			 pstmt.setString(4, vo.getHp());
			 pstmt.setString(5, vo.getId());
			
			int val = pstmt.executeUpdate();
			if(val!=0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	/**
	 * 마이페이지 - 회원 탈퇴하기
	 */
	public boolean getDelete(String id) {
		boolean result = false;
		try {
			String sql="delete from coffee_member where id=?";
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			
			int val = pstmt.executeUpdate();
			if(val!=0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * login 
	 */
	public SessionVO getLogin(CoffeeMemberVO vo) {
		return sqlSession.selectOne(namespace_member+".login",vo);
	}
	
	/**
	 * 회원가입 - ID중복체크
	 */
	public int getIdCheck(String id) {
		return sqlSession.selectOne(namespace_member+".idCheck",id);
	}
	/**
	 * 아이디찾기
	 */
	public CoffeeMemberVO findId(String name,String hp) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("name", name);
		param.put("hp", hp);
		return sqlSession.selectOne(namespace_member+".findId",param);
	}
	/**
	 * 비밀번호찾기
	 */
	public CoffeeMemberVO findPass(String id) {
		return sqlSession.selectOne(namespace_member+".findPass",id);
	}
	/**
	 * 아이디 result찾기
	 */
	public int findName_result(String name) {
		return sqlSession.selectOne(namespace_member+".findName",name);
	}
	/**
	 * 전화번호 result 찾기
	 */
	public int findHp_result(String hp) {
		return sqlSession.selectOne(namespace_member+".findHp",hp);
	}
	/**
	 * Insert : 회원가입
	 */
	public boolean getInsert(CoffeeMemberVO vo) {
		boolean result = false;
		
		int value = sqlSession.insert(namespace_member+".join",vo);
		if(value != 0) {
			result = true;
		}
		return result;
	}
	

	
}
