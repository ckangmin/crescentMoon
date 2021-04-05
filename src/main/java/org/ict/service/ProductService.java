package org.ict.service;

import java.util.List;

import org.ict.domain.ProductVO;

public interface ProductService {
	public void create(ProductVO vo);
	public List<ProductVO> list();
	public void modify(ProductVO vo);
	public ProductVO detail(int pno);
	public void remove(int pno);
	public List<ProductVO> find(String pname);
}
