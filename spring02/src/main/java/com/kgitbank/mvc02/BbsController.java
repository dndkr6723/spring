package com.kgitbank.mvc02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//이 클래스가 controller 라고 선언.	- @controller라고 상단에 적어둔다.
@Controller
public class BbsController {
	
	// 싱글톤,
	@Autowired
	BbsDAO dao;
	
	@RequestMapping("insert2")
	public void insert(String id,String title,String content, String writer) throws Exception {
		System.out.println("insert2 요청됨");
		System.out.println("입력한 id는" + id);
		System.out.println("입력한 pw는" + title);
		System.out.println("입력한 name는" + content);
		System.out.println("입력한 tel은" + writer);
		dao.insert(id, title, content, writer);
	}
	
	@RequestMapping("delete2")
	public void delete(String id) throws Exception {
		System.out.println("delete2 요청됨");
		System.out.println("입력한 id는" + id);
		dao.delete(id);
	}
	
	@RequestMapping("select2")
	public void select(String id, Model model) throws Exception {
		System.out.println("select2 요청됨");
		System.out.println("입력한 id는" + id);
		BbsDTO dto3 = dao.select(id);
		model.addAttribute("dto3",dto3);
	}
	
}