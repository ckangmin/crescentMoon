package org.ict.controller;

import java.util.List;

import org.ict.domain.QnaVO;
import org.ict.domain.ReviewVO;
import org.ict.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/review")
public class ReviewRestController {
	@Autowired
	private ReviewService service;
	
	@GetMapping(value="/list", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<ReviewVO>> ReviewList() {
		ResponseEntity<List<ReviewVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<ReviewVO>>(service.getList(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//ReviewList
	
	@GetMapping(value="/{rno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReviewVO> ReviewDetail(@PathVariable("rno") int rno) {
		ResponseEntity<ReviewVO> entity = null;
		
		try {
			entity = new ResponseEntity<>(service.getDetail(rno), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//ReviewDetail
	
	//reviewwrtie
	@PostMapping(value="/write", consumes="application/json", produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> write(@RequestBody ReviewVO vo) {
		ResponseEntity<String> entity = null;

		try {
			service.write(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//reviewwrtie

	//reviewmodify
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH}, value="/{rno}", consumes = "application/json", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> modify(@RequestBody ReviewVO vo, @PathVariable("rno") int rno){
		ResponseEntity<String> entity = null;
		
		try {
			vo.setRno(rno);
			service.modify(vo);
			
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//reviewmodify
	
	//reviewremove
	@DeleteMapping(value="/{rno}", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("rno") int rno) {
		ResponseEntity<String> entity = null;
		
		try {
			service.remove(rno);
			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//reviewremove
}
