package org.ict.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/order/*")
public class OrderController {
	
	@GetMapping("/payment")
	public void payment() {
		
	}
	
	@PostMapping("/payment")
	public String payment(int[] cnoArr, RedirectAttributes rttr) {
		
//		System.out.println(cnoArr);
//		for (int i : cnoArr) {
//			System.out.println(i);
//		}
		
		log.info(cnoArr.length);
		
		rttr.addFlashAttribute("cnoArr", cnoArr);
		rttr.addFlashAttribute("length", cnoArr.length);
		
		return "redirect:/order/payment";
	}
	
	@GetMapping("/complite")
	public void complite() {
		
	}
}
