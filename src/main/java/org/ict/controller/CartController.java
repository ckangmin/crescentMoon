package org.ict.controller;

import java.util.List;

import org.ict.domain.ProVO;
import org.ict.service.ProService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/addproduct")
public class CartController {
	@Autowired
	private ProService service;
	
	@PostMapping(value="", consumes="application/json",
			produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> register(
			@RequestBody ProVO vo){
		ResponseEntity<String> entity=null;
		try {
			service.create(vo);
			entity=new ResponseEntity<String>(
					"SUCCESS" ,HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity= new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	@GetMapping(value="/all",
			produces= {MediaType.APPLICATION_ATOM_XML_VALUE,
						MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<ProVO>> list(){
		ResponseEntity<List<ProVO>> entity=null;
		try {
			entity=new ResponseEntity<>(
								service.list(),HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
