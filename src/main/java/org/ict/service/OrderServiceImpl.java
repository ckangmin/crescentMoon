package org.ict.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ict.domain.CartVO;
import org.ict.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper mapper;
	
	@Override
	public List<CartVO> paymentList(@Param("cnoArr") int[] arr) {
		return mapper.selectPayment(arr);
	}

	@Override
	public List<CartVO> total(int[] arr) {
		return mapper.total(arr);
	}

}
