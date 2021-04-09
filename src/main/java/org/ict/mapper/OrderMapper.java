package org.ict.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ict.domain.CartVO;

public interface OrderMapper {
	
	public List<CartVO> selectPayment(@Param("arr") int[] arr);

	public List<CartVO> total(@Param("arr") int[] arr);
	
}
