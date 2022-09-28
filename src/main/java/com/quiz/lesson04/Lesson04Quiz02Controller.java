package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson04.bo.RealtorBO;
import com.quiz.lesson04.model.Realtor;

@RequestMapping("/lesson04/quiz02")
@Controller
public class Lesson04Quiz02Controller {
	
	@Autowired
	private RealtorBO realtorBO;
	
	@RequestMapping("/add_realtor")
	public String addRealtor() {
		return "lesson04/quiz02/addRealtor";
	}
	
	@PostMapping("/realtor_info")
	public String realtorInfo(
			Realtor realtor,
			Model model) {
		// db insert
		realtorBO.addRealtorInfo(realtor);
		// db select
		Realtor currentRealtor = realtorBO.getRealtorInfo(realtor.getId());
		// model 값 넣기
		model.addAttribute("realtor", currentRealtor);
		// return
		return "lesson04/quiz02/realtorInfo";
	}

}
