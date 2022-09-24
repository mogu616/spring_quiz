package com.quiz.lesson03;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;
import com.quiz.lesson03.model.RealEstate;

@RestController
public class Lesson03Quiz01RestController {
	
	@Autowired
	private RealEstateBO realEstateBO;
	
	@RequestMapping("/lesson03/quiz01/1")
	public RealEstate quiz01_1(
			@RequestParam(value="id") int id
	) {
		return realEstateBO.getRealEstateById(id);
	}
	
	@RequestMapping("/lesson03/quiz01/2")
	public List<RealEstate> quiz01_2(
			@RequestParam(value="rent_price") Integer rentPrice
	) {
			return realEstateBO.getRealEstateByRentPrice(rentPrice);
	}
	
	@RequestMapping("/lesson03/quiz01/3")
	public List<RealEstate> quiz01_3 (
			
			@RequestParam Map<String, Integer> areaAndPrice
	) {
			return realEstateBO.getRealEstateByAreaByPrice(areaAndPrice);
	}
	
	
}
