package com.kgitbank.mvc02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

// 이 클래스가 DAO 라고 선언.	- @repository라고 상단에 적어둔다.
@Repository
public class MemberDAO {
	
	// 자동 import : ctrl + shift + o

	public void insert(String id, String pw, String name, String tel) throws Exception {
		
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
		String sql = "insert into member values (?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, pw);
		ps.setString(3, name);
		ps.setString(4, tel);
		
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
			String sql = "delete from member where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			
			System.out.print("3. SQL 결정 성공!!");
			
			// 4. SQL 전송
			ps.executeUpdate();
			System.out.print("3. SQL 전송 성공!!");
		}


	public MemberDTO select(String id) throws Exception {
		
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
		String sql = "select * from member where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		
		System.out.print("3. SQL 결정 성공!!");
		
		
		
		// 4. SQL 전송
		ResultSet rs = ps.executeQuery(); // read(select) 만 executeQuery 이다.
		
		MemberDTO dto2 = null;
		if(rs.next()) {
			String gid = rs.getString(1); // id
			String pw = rs.getString(2); // pw
			String name = rs.getString(3); // name
			String tel = rs.getString(4); // tel
			System.out.println(gid);
			System.out.println(pw);
			System.out.println(name);
			System.out.println(tel);
			
			dto2 = new MemberDTO();
			dto2.setId(gid);
			dto2.setPw(pw);
			dto2.setName(name);
			dto2.setTel(tel);
			
		}
		
		System.out.print("4. SQL 전송 성공!!");
		return dto2;
	}

}
