package org.ict.controller;

import java.util.List;

import org.ict.domain.CartVO;
import org.ict.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/order/*")
public class OrderRestController {
	@Autowired
	private OrderService service;
	
	@GetMapping(value="/cartlist/{arr}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<CartVO>> cartlist(@PathVariable("arr") int[] arr) {
		ResponseEntity<List<CartVO>> entity = null;
		
		try {
			entity = new ResponseEntity<>(service.paymentList(arr), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//order cartlist
	
	@GetMapping(value="/total/{arr}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<CartVO> total(@PathVariable("arr") int[] arr) {
		ResponseEntity<CartVO> entity = null;
		
		int x = 0;
		
//		System.out.println(service.total(arr));
		
		try {
			for(CartVO a : service.total(arr)) {
//				System.out.println(a.getTotal());
				x += a.getTotal();
			}
			
			CartVO vo = new CartVO();
			vo.setTotal(x);
			
			System.out.println(vo.getTotal());
			
			entity = new ResponseEntity<>(vo, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//total
	
}//class
