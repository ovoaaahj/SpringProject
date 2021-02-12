package com.spring.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.vo.RealBuyVO;

public class RealBuyDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.buy";
	
	public RealBuyVO getBuyContent(String bid) {
		
		return sqlSession.selectOne(namespace+".getBuyContent", bid);
	}
	
	public boolean getBuyInsert(RealBuyVO vo) {
		
		boolean result = false;
		int val = sqlSession.insert(namespace+".getBuyInsert",vo);
		if(val != 0) result = true;
		return result;
		
		
	}
	
	/**
	 * 검색기능 시 리스트 카운트
	 */
	public int getListCount(String id) {

		
		return sqlSession.selectOne(namespace +".listcount",id);

	}
	

	public ArrayList<RealBuyVO> getList(String id, int start, int end) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("id", id);
		param.put("start", String.valueOf(start));
		param.put("end", String.valueOf(end));

		List<RealBuyVO> list = sqlSession.selectList(namespace + ".list", param);
		return (ArrayList<RealBuyVO>) list;

	}
	
}
