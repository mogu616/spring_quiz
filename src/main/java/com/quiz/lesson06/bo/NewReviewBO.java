package com.quiz.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.NewReviewDAO;
import com.quiz.lesson06.model.NewReview;

@Service
public class NewReviewBO {
	
	@Autowired
	private NewReviewDAO newReviewDAO;
	
	public List<NewReview> getNewReviewById(int id, String name) {
		return newReviewDAO.selectNewReviewById(id, name);
	}
}
