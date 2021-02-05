package com.spring.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.vo.TestEventVO;


public class TestEventDAO extends DBConn {

	@Autowired
	private SqlSessionTemplate sqlSession;

	private static String namespace = "mapper.event";

	/**
	 * ��ü ����Ʈ ī��Ʈ
	 */
	public int getListCount() {
		return sqlSession.selectOne(namespace + ".listcount");

		/*
		 * try { String sql = "select count(*) from TESTEVENT";
		 * getPreparedStatement(sql); ResultSet rs = pstmt.executeQuery(); if(rs.next())
		 * result = rs.getInt(1);
		 * 
		 * } catch (Exception e) { e.printStackTrace(); }
		 * 
		 * return result;
		 */

	}

	/*
	 * public ArrayList<TestEventVO> getList(){ List<TestEventVO> list =
	 * sqlSession.selectList(namespace+".list"); return
	 * (ArrayList<TestEventVO>)list;
	 * 
	 * ArrayList<TestEventVO> list = new ArrayList<TestEventVO>();
	 * 
	 * try { String sql =
	 * "select rownum rno, eid, etitle, to_char(edate,'yyyy.mm.dd'), to_char(edate2,'yyyy.mm.dd'), ehits, eend, esfile_t"
	 * + " from (select * from TESTEVENT order by edate desc)";
	 * getPreparedStatement(sql); ResultSet rs = pstmt.executeQuery();
	 * while(rs.next()) { TestEventVO vo = new TestEventVO();
	 * vo.setRno(rs.getInt(1)); vo.setEid(rs.getString(2));
	 * vo.setEtitle(rs.getString(3)); vo.setEdate(rs.getString(4));
	 * vo.setEdate2(rs.getString(5)); vo.setEhits(rs.getInt(6));
	 * vo.setEend(rs.getInt(7)); vo.setEfile_t(rs.getString(8));
	 * 
	 * list.add(vo); } } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * System.out.println(list.get(1).getEfile_t()); return list;
	 * 
	 * }
	 */

	public ArrayList<TestEventVO> getList(int start, int end) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("start", String.valueOf(start));
		param.put("end", String.valueOf(end));

		List<TestEventVO> list = sqlSession.selectList(namespace + ".list", param);
		return (ArrayList<TestEventVO>) list;

	}

	public TestEventVO getContent(String eid) {
		TestEventVO vo = new TestEventVO();
		
		

		return sqlSession.selectOne(namespace + ".content", eid);

		/*
		 * try { String sql = "select eid,etitle, econtent " +
		 * ",to_char(edate,'yyyy.mm.dd'),to_char(edate2,'yyyy.mm.dd'),ehits, efile, esfile, efile_t, esfile_t, eend "
		 * + " from TESTEVENT where eid=?";
		 * 
		 * getPreparedStatement(sql); pstmt.setString(1, nid); ResultSet rs =
		 * pstmt.executeQuery(); if(rs.next()) { vo.setEid(rs.getString(1));
		 * vo.setEtitle(rs.getString(2)); vo.setEcontent(rs.getString(3));
		 * vo.setEdate(rs.getString(4)); vo.setEdate2(rs.getString(5));
		 * vo.setEhits(rs.getInt(6)); vo.setEfile(rs.getString(7));
		 * vo.setEsfile(rs.getString(8)); vo.setEfile_t(rs.getString(9));
		 * vo.setEsfile_t(rs.getString(10)); vo.setEend(rs.getInt(11)); }
		 * 
		 * } catch (Exception e) { e.printStackTrace(); }
		 * 
		 * return vo;
		 */
	}

	public boolean getInsert(TestEventVO vo) {
		boolean result = false;

		int value = sqlSession.insert(namespace + ".insert", vo);
		if (value != 0)
			result = true;
		return result;

		/*
		 * try { String sql = "insert into TESTEVENT " +
		 * " values('n_'||sequ_TESTEVENT.nextval,?,?,?,?,?,?,?,?,0,?)";
		 * 
		 * getPreparedStatement(sql); pstmt.setString(1, vo.getEtitle());
		 * pstmt.setString(2, vo.getEcontent()); pstmt.setString(3, vo.getEfile());
		 * pstmt.setString(4, vo.getEsfile()); pstmt.setString(5, vo.getEfile_t());
		 * pstmt.setString(6, vo.getEsfile_t()); pstmt.setString(7, vo.getEdate());
		 * pstmt.setString(8, vo.getEdate2()); pstmt.setInt(9, vo.getEend());
		 * 
		 * int val = pstmt.executeUpdate(); if(val != 0) result = true;
		 * 
		 * 
		 * } catch (Exception e) { e.printStackTrace(); }
		 *
		 * return result;
		 */
	}

	/**
	 * Update : ��ȸ�� ������Ʈ
	 */
	public void getUpdateHits(String eid) {
		try {
			String sql = "update TESTEVENT set ehits=ehits+1 " + " where nid=?";

			getPreparedStatement(sql);
			pstmt.setString(1, eid);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Delete : ����
	 */
	public boolean getDelete(String eid) {
		boolean result = false;
		int val = sqlSession.delete(namespace+".delete",eid);
		if(val != 0) result = true;
		return result;
	}
	

	

	/**
	 * Update : ���� ����
	 */
	public boolean getUpdate(TestEventVO vo) {
		boolean result = false;

		int value = sqlSession.update(namespace + ".update", vo);
		if (value != 0)
			result = true;
		return result;
		
		/*
		 * boolean result = false;
		 * 
		 * try { String sql = "update TESTEVENT set etitle=?, encontent=? " +
		 * " where eid=?";
		 * 
		 * getPreparedStatement(sql); pstmt.setString(1, vo.getEtitle());
		 * pstmt.setString(2, vo.getEcontent()); pstmt.setString(3, vo.getEid());
		 * 
		 * int val = pstmt.executeUpdate(); if (val != 0) result = true;
		 * 
		 * } catch (Exception e) { e.printStackTrace(); }
		 * 
		 * return result;
		 */
	}

}// class
