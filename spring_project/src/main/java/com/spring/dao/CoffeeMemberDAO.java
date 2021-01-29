package com.spring.dao;




import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.vo.CoffeeMemberVO;
import com.spring.vo.SessionVO;

public class CoffeeMemberDAO extends DBConn{

	@Autowired
	private SqlSessionTemplate sqlSession;
	private static String namespace = "mapper.mypage";
	
	private static String namespace_member="mapper.member";
	/**
	
	 * ���������� - ȸ������ �����ϱ�
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
	 * ���������� - ȸ�� Ż���ϱ�
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
	 * ȸ������ - ID�ߺ�üũ
	 */
	public int getIdCheck(String id) {
		return sqlSession.selectOne(namespace_member+".idCheck",id);
	}
	/**
	 * Insert : ȸ������
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
