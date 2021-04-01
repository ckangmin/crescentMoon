package org.ict.service;

import java.util.List;

import org.ict.domain.ProVO;
import org.ict.mapper.ProMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ProServiceImpl implements ProService {
	@Autowired
	private ProMapper mapper;
	
	
	@Override
	public void create(ProVO vo) {
	mapper.insert(vo);
		
	}


	@Override
	public List<ProVO> list() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}


	@Override
	public void modify(ProVO vo) {
		mapper.update(vo);
		
	}


	@Override
	public ProVO get(int pno) {
		
		return mapper.read(pno);
	}


	@Override
	public void remove(int pno) {
		mapper.delete(pno);
		
	}

}
