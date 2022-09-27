package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson04.bo.SellerBO;
import com.quiz.lesson04.model.Seller;

@RequestMapping("/lesson04/quiz01")
@Controller
public class Lesson04Quiz01Controller {
	
	@Autowired
	private SellerBO sellerBO;
	
	// 요청 url: http://localhost:8080/lesson04/quiz01/add_seller_view
	@RequestMapping("/add_seller_view")
	public String addSellerView() {
		return "lesson04/quiz01/addSeller";
	}
	
	@PostMapping("/add_seller")
	public String addSeller(
			@RequestParam("nickname") String nickname,
			@RequestParam(value="profileImageUrl", required=false) String profileImageUrl,
			@RequestParam("temperature") double temperature) {
		
		sellerBO.addSeller(nickname, profileImageUrl, temperature);
		
		return "lesson04/quiz01/afterAddSeller";
	}
	
	@RequestMapping("/seller_info")
	public String getLastSellerInfo(Model model,
			@RequestParam(value="id", required=false) Integer id) {
		
		Seller seller = (id == null) ? sellerBO.getLastSellerInfo() : sellerBO.getSellerInfoById(id);
		model.addAttribute("result", seller);
		
		return "lesson04/quiz01/getLastSellerInfo";
	}
}
