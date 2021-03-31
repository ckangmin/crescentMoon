package org.ict.service;

import java.util.List;

import org.ict.domain.ProVO;

public interface ProService {
	public void create(ProVO vo);
	public List<ProVO> list();
	public void modify(ProVO vo);
	public ProVO get(int pno);
}
