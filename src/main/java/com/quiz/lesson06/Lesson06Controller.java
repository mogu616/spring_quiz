package com.quiz.lesson06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.FavoriteBO;
import com.quiz.lesson06.model.Favorite;

@Controller
@RequestMapping("/lesson06")
public class Lesson06Controller {
	
	@Autowired
	private FavoriteBO favoriteBO;
	
	@RequestMapping("/quiz01/1")
	public String quiz01_1() {
		return "lesson06/quiz01_1";
	}
	
	@PostMapping("/quiz01/2")
	@ResponseBody
	public String quiz01_2(
			@RequestParam("name") String name,
			@RequestParam("url") String url) {
		
		favoriteBO.addfavorite(name, url);
		
		return "success";
	}
	
	@RequestMapping("/quiz01/3")
	public String quiz01_3(Model model) {
		
		List<Favorite> favoriteList = favoriteBO.getFavorit();
		
		model.addAttribute("favoriteList", favoriteList);
		
		return "lesson06/quiz01_3";
	}
	
}
