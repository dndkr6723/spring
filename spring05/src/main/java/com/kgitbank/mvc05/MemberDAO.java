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

// �� Ŭ������ DAO ��� ����.	- @repository��� ��ܿ� ����д�.
@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate my;

	
	public List<MemberDTO> memberAll() throws Exception {

		return my.selectList("member.selectAll");	// ������ �˻��� �� �ǵڿ� List�� �ٿ��ش�
	}
}
