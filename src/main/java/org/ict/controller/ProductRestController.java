package org.ict.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.ict.domain.ProductVO;
import org.ict.domain.QnaVO;
import org.ict.domain.ReviewVO;
import org.ict.service.ProductService;
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
import org.springframework.web.multipart.MultipartFile;

import jdk.internal.org.jline.utils.Log;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/product/*")
public class ProductRestController {
	@Autowired
	private ProductService service;
	
	@PostMapping(value="", consumes="application/json", produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> prodWrite(@RequestBody ProductVO vo) {
		ResponseEntity<String> entity=null;
		
		try {
			service.create(vo);
			entity=new ResponseEntity<String>("SUCCESS" ,HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity= new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//prodWrite
	
	@GetMapping(value="/all", produces= {MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<ProductVO>> prodList() {
		ResponseEntity<List<ProductVO>> entity=null;
		
		try {
			entity=new ResponseEntity<>(service.list(""),HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//prodList
	
	@GetMapping(value="/all/{pname}", produces= {MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<ProductVO>> prodList(@PathVariable("pname") String pname) {
		ResponseEntity<List<ProductVO>> entity=null;
		
		try {
			entity=new ResponseEntity<>(service.list(pname),HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//prodList
	
	@GetMapping(value="/one/{pno}", produces= {MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ProductVO> prodDetail(@PathVariable("pno") int pno) {
		ResponseEntity<ProductVO> entity=null;
		
		try {
			entity=new ResponseEntity<>(service.detail(pno), HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//prodDetail
	
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH}, value="/{pno}", consumes="application/json", produces=MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> prodModify(@RequestBody ProductVO vo, @PathVariable("pno") int pno) {
		ResponseEntity<String> entity=null;
		
		try {
			vo.setPno(pno);
			service.modify(vo);
			entity=new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		return entity;			
	}//prodModify
	
	@DeleteMapping(value="/{pno}", produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> prodRemove(@PathVariable("pno") int pno) {
		ResponseEntity<String> entity=null;
		
		try {
			service.remove(pno);
			entity=new ResponseEntity<String>("SUCCESS", HttpStatus.OK);}
		catch(Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//prodRemove
	
	@GetMapping(value="/recom", produces= {MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<ProductVO>> recommend() {
		ResponseEntity<List<ProductVO>> entity=null;
		
		try {
			entity=new ResponseEntity<>(service.recom(),HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}//recommend
	@PostMapping("/uploadAjaxAction")
	@ResponseBody
	public ResponseEntity<String> uploadAjaxPost(MultipartFile uploadFile){
		ResponseEntity<String> entity=null;
		Log.info("product image upload!!");
		String path=null;
		String uploadFolder= "C:\\crescent\\img";
		
		String uploadFolderPath="product";
		
		File uploadPath= new File(uploadFolder, uploadFolderPath);
		Log.info("upload path: "+uploadPath);
		if(uploadPath.exists()== false) {
			uploadPath.mkdirs();
		}
	
		MultipartFile multipartFile = uploadFile;
		String uploadFileName=multipartFile.getOriginalFilename();
		uploadFileName =uploadFileName.substring(uploadFileName.lastIndexOf("\\") +1);
		Log.info("only file name : " +uploadFileName);
		String imgpath=uploadFileName;
		try {
			File saveFile= new File (uploadPath, uploadFileName);
			multipartFile.transferTo(saveFile);
			entity=new ResponseEntity<>(saveFile,HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return entity;
	
	}
		
	
}//class
