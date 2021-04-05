package org.ict.service;

import java.util.List;

import org.ict.domain.QnaVO;

public interface QnaService {
	public void write(QnaVO vo);
	
	public List<QnaVO> getList();
	
	public QnaVO getDetail(int qno);
	
	public void modify(QnaVO vo);
	
	public void remove(int qno);
}
