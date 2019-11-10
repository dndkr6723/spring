package com.kgitbank.mvcFinal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO dao;
	
	@Autowired
	ReplyDAO dao2;
	
	@RequestMapping("selectAll2")
	public void selectAll(Model model) throws Exception {
		
		List<ProductDTO> list = dao.selectAll();

		model.addAttribute("list",list);
	}
	
	@RequestMapping("select2")
	public void select(ProductDTO productDTO, Model model) {
		ProductDTO dto = dao.select(productDTO);
		model.addAttribute("dto", dto);
		
		// 댓글 가지고 오기
		
		System.out.println("-------");
		ReplyDTO dto2 = new ReplyDTO();
		dto2.setProductId(dto.getId());
		List<ReplyDTO> list2 = dao2.selectAll(dto2);
		for (ReplyDTO replyDTO : list2) {
			System.out.println(replyDTO);
		}
		model.addAttribute("list",list2);
	}
		
	
	
}
