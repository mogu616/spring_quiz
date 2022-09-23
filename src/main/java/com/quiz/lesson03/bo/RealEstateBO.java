package com.quiz.lesson03.bo;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.dao.RealEstateDAO;
import com.quiz.lesson03.model.RealEstate;

@Service
public class RealEstateBO {
	
	@Autowired
	private RealEstateDAO realEstateDAO;
	
	public RealEstate getRealEstateById(int id) {
		return realEstateDAO.selectRealEstateById(id);
	}
	
	public List<RealEstate> getRealEstateByRentPrice(Integer rentPrice) {
		return realEstateDAO.selectRealEstateByRentPrice(rentPrice);
	}
	
	public List<RealEstate> getRealEstateByAreaByPrice(Map<String, Integer> areaAndPrice) {
		return realEstateDAO.selectRealEstateByAreaByPrice(areaAndPrice);
	}
}
