package org.ict.controller;

import java.util.List;

import org.ict.domain.QnaVO;
import org.ict.service.QnaService;
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
@RequestMapping("/qna")
public class QnaRestController {
	@Autowired
	private QnaService service;
	
	//qnalist
	@GetMapping(value="/list", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<QnaVO>> list() {
		ResponseEntity<List<QnaVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<QnaVO>>(service.getList(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//qnalist
	
	//qnadetail
	@GetMapping(value="/{qno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<QnaVO> detail(@PathVariable("qno") int qno) {
		ResponseEntity<QnaVO> entity = null;
		
		try {
			entity = new ResponseEntity<>(service.getDetail(qno), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//qnadetail
	
	//qnawrtie
	@PostMapping(value="/write", consumes="application/json", produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> write(@RequestBody QnaVO vo) {
		ResponseEntity<String> entity = null;
		
		try {
			service.write(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//qnawrtie
	
	//qnamodify
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, value="/{qno}", consumes = "application/json", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> modify(@RequestBody QnaVO vo, @PathVariable("qno") int qno){
		ResponseEntity<String> entity = null;
		
		try {
			service.modify(vo);
			
			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//qnamodify
	
	//qnaremove
	@DeleteMapping(value="/{qno}", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("qno") int qno) {
		ResponseEntity<String> entity = null;
		
		try {
			service.remove(qno);
			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//qnaremove
}//class