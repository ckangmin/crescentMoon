package org.ict.mapper;

import java.util.List;

import org.ict.domain.QnaVO;

public interface QnaMapper {
	public void insert(QnaVO vo);
	
	public List<QnaVO> selectAll();
	
	public QnaVO select(int qno);
	
	public void update(QnaVO vo);
	
	public void delete(int qno);
}