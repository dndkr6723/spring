package com.kgitbank.mvc03;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

// 이 클래스가 DAO 라고 선언.	- @repository라고 상단에 적어둔다.
@Repository
public class BbsDAO {
	
	// 자동 import : ctrl + shift + o

	public void insert(String id, String title, String content, String writer) throws Exception {
		
		// 1. 드라이버 설정
		Class.forName("com.mysql.jdbc.Driver");
		System.out.print("1. 드라이버 설정 성공!");
		
		// 2. DB 연결
		String url = "jdbc:mysql://localhost:3306/spring"; //연결할 DB
		String user = "root"; // id
		String password = "1234"; // pw
		
		Connection con = DriverManager.getConnection(url, user, password);
		System.out.print("2. DB연결 성공!!");
		
		// 3. SQL 결정
		String sql = "insert into bbs values (?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, title);
		ps.setString(3, content);
		ps.setString(4, writer);
		
		System.out.print("3. SQL 결정 성공!!");
		
		// 4. SQL 전송
		ps.executeUpdate();
		System.out.print("3. SQL 전송 성공!!");
	}
	
	
	public void delete(String id) throws Exception {
		
		// 1. 드라이버 설정
		Class.forName("com.mysql.jdbc.Driver");
		System.out.print("1. 드라이버 설정 성공!");
		
		// 2. DB 연결
		String url = "jdbc:mysql://localhost:3306/spring"; //연결할 DB
		String user = "root"; // id
		String password = "1234"; // pw
		
		Connection con = DriverManager.getConnection(url, user, password);
		System.out.print("2. DB연결 성공!!");
		
		// 3. SQL 결정
		String sql = "delete from bbs where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);

		System.out.print("3. SQL 결정 성공!!");
		
		// 4. SQL 전송
		ps.executeUpdate();
		System.out.print("3. SQL 전송 성공!!");
	}
	
	public BbsDTO select(String id) throws Exception {
		
		// 1. 드라이버 설정
		Class.forName("com.mysql.jdbc.Driver");
		System.out.print("1. 드라이버 설정 성공!");
		
		// 2. DB 연결
		String url = "jdbc:mysql://localhost:3306/spring"; //연결할 DB
		String user = "root"; // id
		String password = "1234"; // pw
		
		Connection con = DriverManager.getConnection(url, user, password);
		System.out.print("2. DB연결 성공!!");
		
		// 3. SQL 결정
		String sql = "select * from bbs where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);

		System.out.print("3. SQL 결정 성공!!");
		
		// 4. SQL 전송
		ResultSet rs = ps.executeQuery();
		
		BbsDTO dto3 = null;
		if(rs.next()) {
			String gid = rs.getString(1);
			String title = rs.getString(2);
			String content = rs.getString(3);
			String writer = rs.getString(4);
			
			dto3= new BbsDTO();
			dto3.setId(gid);
			dto3.setTitle(title);
			dto3.setContent(content);
			dto3.setWriter(writer);
		}
		
		System.out.print("3. SQL 전송 성공!!");
		return dto3;
	}
	
}