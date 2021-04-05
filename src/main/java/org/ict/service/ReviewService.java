package org.ict.service;

import java.util.List;

import org.ict.domain.ReviewVO;

public interface ReviewService {
	public void write(ReviewVO vo);
	
	public List<ReviewVO> getList();
	
	public ReviewVO getDetail(int rno);
	
	public void modify(ReviewVO vo);
	
	public void remove(int rno);
}
