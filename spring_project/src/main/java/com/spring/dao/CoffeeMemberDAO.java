package com.spring.dao;


import java.sql.ResultSet;

import com.spring.vo.CoffeeMemberVO;

public class CoffeeMemberDAO extends DBConn{
	
	
	
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
	 * ȸ������ - ID�ߺ�üũ
	 */
	public int getIdCheck(String id) {
		int result = 0;
		
		try {
			String sql ="select count(*) from coffee_member where id=?";
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	public boolean getInsert(CoffeeMemberVO vo) {
		// TODO Auto-generated method stub
		return false;
	}
	

	
}
