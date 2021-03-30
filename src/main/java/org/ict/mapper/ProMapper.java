package org.ict.mapper;

import java.util.List;

import org.ict.domain.ProVO;

public interface ProMapper {
	public void insert(ProVO vo);
	public List<ProVO> getList();
	public void update(ProVO vo);
}
