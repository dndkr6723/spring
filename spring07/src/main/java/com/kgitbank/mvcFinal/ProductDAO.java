package com.kgitbank.mvcFinal;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public List<ProductDTO> selectAll() {
		return my.selectList("Product.selectAll");
	}
	
	public ProductDTO select(ProductDTO dto) {
		return my.selectOne("Product.select", dto);
	}
	
}
