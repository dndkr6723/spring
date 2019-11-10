package com.kgitbank.mvc05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@Autowired
	MemberDAO dao;

	@RequestMapping("memberAll")
	public void memberAll(Model model) throws Exception {
		
		System.out.println("전체 검색 요청됨");
		
		List<MemberDTO> list = dao.memberAll();
		
		model.addAttribute("list2",list);
	}
	
	
	
}
