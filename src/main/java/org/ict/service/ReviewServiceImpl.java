package org.ict.service;

import java.util.List;

import org.ict.domain.ReviewVO;
import org.ict.mapper.ReviewMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewMapper mapper;
	
	@Override
	public void write(ReviewVO vo) {
		mapper.insert(vo);
	}

	@Override
	public List<ReviewVO> getList() {
		return mapper.selectAll();
	}

	@Override
	public ReviewVO getDetail(int rno) {
		return mapper.select(rno);
	}

	@Override
	public void modify(ReviewVO vo) {
		mapper.update(vo);
	}

	@Override
	public void remove(int rno) {
		mapper.delete(rno);
	}

}
