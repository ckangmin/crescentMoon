package org.ict.service;

import java.util.List;

import org.ict.domain.QnaVO;
import org.ict.mapper.QnaMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaMapper mapper;
	
	@Override
	public void write(QnaVO vo) {
		mapper.insert(vo);
	}

	@Override
	public List<QnaVO> getList() {
		return mapper.selectAll();
	}

	@Override
	public QnaVO getDetail(int qno) {
		return mapper.select(qno);
	}

	@Override
	public void modify(QnaVO vo) {
		mapper.update(vo);
	}

	@Override
	public void remove(int qno) {
		mapper.delete(qno);
	}

}
