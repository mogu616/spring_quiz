package com.quiz.lesson05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson02.bo.StoreBO;
import com.quiz.lesson02.model.Store;
import com.quiz.lesson05.bo.NewReviewBO;
import com.quiz.lesson05.model.NewReview;

@Controller
@RequestMapping("/lesson05")
public class Lesson05Quiz06Controller {
	
	@Autowired
	private StoreBO storeBO;
	@Autowired
	private NewReviewBO NewReviewBO;
	
	@RequestMapping("/quiz06/store_list")
	public String storeList(Model model) {
		
		List<Store> storeList = storeBO.getStoreList();
		
		model.addAttribute("storeList", storeList);
		
		return "lesson05/storeList";
	}
	
	@GetMapping("/quiz06/store_review")
	public String storeReview(
			@RequestParam("id") int id,
			@RequestParam("name") String name,
			Model model) {
		
		List<NewReview> storeReview = NewReviewBO.getNewReviewById(id, name);
		
		model.addAttribute("storeReview", storeReview);
		model.addAttribute("name", name);
		
		return "lesson05/storeReview";
		
	}
}
