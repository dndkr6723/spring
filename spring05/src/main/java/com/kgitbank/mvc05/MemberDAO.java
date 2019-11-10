package com.kgitbank.mvc05;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mysql.fabric.xmlrpc.base.Member;

// 이 클래스가 DAO 라고 선언.	- @repository라고 상단에 적어둔다.
@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate my;

	
	public List<MemberDTO> memberAll() throws Exception {

		return my.selectList("member.selectAll");	// 여러개 검색할 시 맨뒤에 List를 붙여준다
	}
}
