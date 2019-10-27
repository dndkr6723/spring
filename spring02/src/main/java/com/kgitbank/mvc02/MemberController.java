package com.kgitbank.mvc02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//이 클래스가 controller 라고 선언.	- @controller라고 상단에 적어둔다.
@Controller
public class MemberController {
	
	// 싱글톤,
	@Autowired
	MemberDAO dao;
	
	@RequestMapping("insert")
	public void insert(String id,String pw,String name, String tel) throws Exception {
		System.out.println("insert 요청됨");
		System.out.println("입력한 id는" + id);
		System.out.println("입력한 pw는" + pw);
		System.out.println("입력한 name는" + name);
		System.out.println("입력한 tel은" + tel);
		dao.insert(id, pw, name, tel);
	}
	
	@RequestMapping("select")
	public void select(String id,Model model) throws Exception{
		System.out.println("select 요청됨");
		System.out.println("검색할 id는 " + id);
		MemberDTO dto2 = dao.select(id);
		//Model 객체는 views 까지만 값을 넘기고 싶을 때 사용.
		// (session과 유사하지만, 더 작다. views 까지 가면 알아서 없어짐)
		model.addAttribute("dto2", dto2);
	}
	
	@RequestMapping("delete")
	public void delete(String id) throws Exception {
		System.out.println("delete 요청됨");
		System.out.println("삭제할 id는 " + id);
		dao.delete(id);
	}
	
}



