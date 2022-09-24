package com.quiz.lesson03.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;

@RestController
public class Lesson03Quiz04RestController {

	@Autowired
	private RealEstateBO realEstateBO;
	@RequestMapping("/lesson03/quiz04")
	public String quiz04(
			@RequestParam(value="id") int id) {
		
		int row = realEstateBO.deleteRealEstateById(id);
		return "삭제 성공 : " + row;
	}
}
