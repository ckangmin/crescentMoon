package org.ict.mapper;

import java.util.List;

import org.ict.domain.ReviewVO;

public interface ReviewMapper {
	public void insert(ReviewVO vo);
	
	public List<ReviewVO> selectAll();
	
	public ReviewVO select(int rno);
	
	public void update(ReviewVO vo);
	
	public void delete(int rno);
}