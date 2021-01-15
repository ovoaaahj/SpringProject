package com.spring.dao;

public class AdminProductDAO extends DBConn {

	public boolean productInsert() {
		boolean result = false;
		
		try {
			String sql="insert into product (pid,ptitle,pkind1,pkind2,phash,pprice,psub1,psub2,pmphoto,pdate) "
					+"value('p_'||sequ_cgvboard.nextval,?,?,?,?,?,?,?,?,sysdate)";
			getPreparedStatement(sql);
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
