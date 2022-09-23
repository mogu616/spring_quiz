package com.quiz.lesson03.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.RealEstate;

@Repository
public interface RealEstateDAO {
	
	public RealEstate selectRealEstateById(int id);
	
	public List<RealEstate> selectRealEstateByRentPrice(Integer rentPrice);
	
	public List<RealEstate> selectRealEstateByAreaByPrice(
			@Param(area),
			int price
			);
	
	
	//Map<String, Integer> areaAndPrice
}
