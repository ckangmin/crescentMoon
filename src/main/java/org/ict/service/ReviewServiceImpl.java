package org.ict.service;

import java.util.List;

import org.ict.domain.Criteria;
import org.ict.domain.QnaVO;
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
	public List<ReviewVO> getList(Criteria cri) {
		return mapper.selectList(cri);
	}
	
	@Override
	public int getCount() {
		return mapper.count();
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

	@Override
	public List<ReviewVO> review(int pno) {
		return mapper.selectReview(pno);
	}

	@Override
	public List<ReviewVO> myReview(Criteria cri, int mno) {
		return mapper.myReview(cri, mno);
	}

	@Override
	public int myCount(int mno) {
		return mapper.myCount(mno);
	}

}
