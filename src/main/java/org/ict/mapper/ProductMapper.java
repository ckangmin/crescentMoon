package org.ict.mapper;

import java.util.List;

import org.ict.domain.ProductVO;

public interface ProductMapper {
	public void insert(ProductVO vo);
	
	public List<ProductVO> selectAll();
	
	public void update(ProductVO vo);
	
	public ProductVO select(int pno);
	
	public void delete(int pno);
	
	public List<ProductVO> search(String pname);
}
