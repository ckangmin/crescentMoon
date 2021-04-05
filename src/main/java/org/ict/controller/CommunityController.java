package org.ict.controller;

import org.ict.domain.Category;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/community/*")
public class CommunityController {

//커뮤니티//
	@GetMapping("")
	public String community(Model model, Category cate) {
		model.addAttribute("cate", cate);
		
		return "/community/community";
	}//community
	
	@GetMapping("/mycommunity")
	public void mycommunity(Model model, int mno) {
		model.addAttribute("mno", mno);
	}//mycommunity
//커뮤니티//
	
//문의 컨트롤러//
	@GetMapping("/askwrite")
	public String askWrite() {
		return "/community/askwrite";
	}//askWrite
	
	@GetMapping("/askdetail")
	public void askDetail(Model model, int qno) {
		model.addAttribute("qno", qno);
	}//askDetail
	
	@PostMapping("/askmodify")
	public String askModify(Model model, int qno) {
		model.addAttribute("qno", qno);
		
		return "/community/askmodify";
	}//askModify
//문의 컨트롤러//
	
	
	
//리뷰 컨트롤러//
	@GetMapping("/reviewwrite")
	public String reviewWrite() {
		return "/community/reviewwrite";
	}//reviewWrite
	
	@GetMapping("/reviewdetail")
	public void reviewDetail(Model model, int rno, Category cate) {
		model.addAttribute("rno", rno);
		model.addAttribute("cate", cate);
	}//reviewDetail
	
	@PostMapping("/reviewmodify")
	public String reviewModify(Model model, int rno, Category cate) {
		model.addAttribute("rno", rno);
		
		return "/community/reviewmodify";
	}//reviewModify
//리뷰 컨트롤러//

}//class