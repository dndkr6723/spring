package com.kgitbank.mvc05;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookMarkController {
	
	@Autowired
	BookMarkDAO dao;
	

	@RequestMapping("insert")
	public void insert(BookMarkDTO bookMarkDTO) throws Exception{
		System.out.println(bookMarkDTO.getId());
		System.out.println(bookMarkDTO.getName());
		System.out.println(bookMarkDTO.getSite());
		
		dao.insert(bookMarkDTO);
	}
	
	
}
