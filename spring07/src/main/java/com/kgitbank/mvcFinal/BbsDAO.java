package com.kgitbank.mvcFinal;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BbsDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public List<BbsDTO> selectAll() {
		return my.selectList("Bbs.selectAll");
	}
	
	public BbsDTO select(BbsDTO dto) {
		return my.selectOne("Bbs.select", dto);
	}
	
	
}
