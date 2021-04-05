package org.ict.service;

import java.util.List;

import org.ict.domain.ProductVO;
import org.ict.mapper.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductMapper mapper;
	
	@Override
	public void create(ProductVO vo) {
		mapper.insert(vo);
	}

	@Override
	public List<ProductVO> list() {
		return mapper.selectAll();
	}

	@Override
	public void modify(ProductVO vo) {
		mapper.update(vo);
	}

	@Override
	public ProductVO detail(int pno) {
		return mapper.select(pno);
	}

	@Override
	public void remove(int pno) {
		mapper.delete(pno);
	}

	@Override
	public List<ProductVO> find(String pname) {
		
		return mapper.search(pname);
	}
	

}//class