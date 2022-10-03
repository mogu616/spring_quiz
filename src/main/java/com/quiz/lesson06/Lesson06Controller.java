package com.quiz.lesson06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson02.bo.StoreBO;
import com.quiz.lesson02.model.Store;
import com.quiz.lesson06.bo.NewReviewBO;
import com.quiz.lesson06.model.NewReview;

@Controller
@RequestMapping("/lesson06")
public class Lesson06Controller {
	
	@Autowired
	private StoreBO storeBO;
	@Autowired
	private NewReviewBO NewReviewBO;
	
	@RequestMapping("/quiz06/store_list")
	public String storeList(Model model) {
		
		List<Store> storeList = storeBO.getStoreList();
		
		model.addAttribute("storeList", storeList);
		
		return "lesson06/storeList";
	}
	
	@GetMapping("/quiz06/store_review")
	public String storeReview(
			@RequestParam(value="id", required=false) int id,
			@RequestParam(value="name", required=false) String name,
			Model model) {
		
		List<NewReview> storeReview = NewReviewBO.getNewReviewById(id, name);
		
		model.addAttribute("storeReview", storeReview);
		model.addAttribute("name", name);
		
		return "lesson06/storeReview";
		
	}
}
