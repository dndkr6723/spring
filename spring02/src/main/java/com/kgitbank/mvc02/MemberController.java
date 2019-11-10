package com.kgitbank.mvc02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//�� Ŭ������ controller ��� ����.	- @controller��� ��ܿ� ����д�.
@Controller
public class MemberController {
	
	// �̱���,
	@Autowired
	MemberDAO dao;
	
	@RequestMapping("insert")
	public void insert(String id,String pw,String name, String tel) throws Exception {
		System.out.println("insert ��û��");
		System.out.println("�Է��� id��" + id);
		System.out.println("�Է��� pw��" + pw);
		System.out.println("�Է��� name��" + name);
		System.out.println("�Է��� tel��" + tel);
		dao.insert(id, pw, name, tel);
	}
	
	@RequestMapping("select")
	public void select(String id,Model model) throws Exception{
		System.out.println("select ��û��");
		System.out.println("�˻��� id�� " + id);
		MemberDTO dto2 = dao.select(id);
		//Model ��ü�� views ������ ���� �ѱ�� ���� �� ���.
		// (session�� ����������, �� �۴�. views ���� ���� �˾Ƽ� ������)
		model.addAttribute("dto2", dto2);
	}
	
	@RequestMapping("delete")
	public void delete(String id) throws Exception {
		System.out.println("delete ��û��");
		System.out.println("������ id�� " + id);
		dao.delete(id);
	}
	
}


