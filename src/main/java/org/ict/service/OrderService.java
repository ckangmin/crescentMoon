package org.ict.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ict.domain.CartVO;

public interface OrderService {
	public List<CartVO> paymentList(@Param("arr") int[] arr);
	
	public List<CartVO> total(@Param("arr") int[] arr);
}
