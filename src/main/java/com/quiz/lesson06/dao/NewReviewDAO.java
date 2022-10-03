package com.quiz.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson06.model.NewReview;

@Repository
public interface NewReviewDAO {
	
	public List<NewReview> selectNewReviewById(
			@Param("id") int id,
			@Param("name") String name);
}
