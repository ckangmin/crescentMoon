package org.ict.controller;

import java.util.List;

import org.ict.domain.ProVO;
import org.ict.service.ProService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.config.ExecutorBeanDefinitionParser;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/product")
public class ProductController {
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
	@GetMapping(value="/one/{pno}",
			produces= {MediaType.APPLICATION_ATOM_XML_VALUE,
						MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ProVO> get(
		
		@PathVariable("pno") int pno){
		ResponseEntity<ProVO> entity=null;
		try {
			entity=new ResponseEntity<>(
					service.get(pno),HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH},
			value="/{pno}",
			consumes="application/json",
			produces=MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> modify(
			@RequestBody ProVO vo, @PathVariable("pno") int pno){
		ResponseEntity<String> entity=null;
		try {
			vo.setPno(pno);
			service.modify(vo);
			entity=new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
				return entity;			
	}
	@DeleteMapping(value="/{pno}",
							produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(
			@PathVariable("pno") int pno){
		ResponseEntity<String> entity=null;
		try {
			service.remove(pno);
			entity=new ResponseEntity<String>("SUCCESS", HttpStatus.OK);}
		catch(Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<>(
				e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
			
	
}
