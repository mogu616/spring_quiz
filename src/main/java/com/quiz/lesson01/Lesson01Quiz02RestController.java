package com.quiz.lesson01;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController // @Controller + @ResponseBody
public class Lesson01Quiz02RestController {
	
	@RequestMapping("/lesson01/quiz02/1")
	public List<Map<String, Object>> quiz02_1() {
		// @ResponseBody + return String => HttpMessageConverter String => 글자가 response에 담긴다
		// @ResponseBody + return 객체 => HttpMessageConverter 객체 jackson 라이브러리 => JSON 응답 - API
		
		List<Map<String, Object>> result = new ArrayList<>();
		
		Map<String, Object> map = new HashMap<>();
		map.put("rate", 15);
		map.put("director", "봉준호");
		map.put("time", 131);
		map.put("title", "기생충");
		result.add(map);
		
		map = new HashMap<>();
		map.put("rate", 0);
		
		return result;
	}
	
	@RequestMapping("/lesson01/quiz02/2")
	public List<Data> quiz02_2() {
		List<Data> result = new ArrayList<>();
		Data data = new Data();
		data.setTitle("안녕하세요 가입인사 드립니다.");
		data.setUser("hagulu");
		data.setContent("안녕하세요. 가입했어요. 앞으로 잘 부탁 드립니다. 활동 열심히 하겠습니다.");
		result.add(data);
		
		data = new Data();
		data.setTitle("헐 대박");
		data.setUser("bada");
		data.setContent("오늘 목요일이 었어... 금요일인줄");
		result.add(data);
		
		data = new Data();
		data.setTitle("오늘 데이트 한 이야기 해드릴게요.");
		data.setUser("dulumary");
		data.setContent("....");
		result.add(data);
		
		return result;
	}
	
	@RequestMapping("/lesson01/quiz02/3")
	public ResponseEntity<Data> quiz02_3() {
		Data data = new Data();
		data.setTitle("안녕하세요 가입인사 드립니다.");
		data.setUser("hagulu");
		data.setContent("안녕하세요. 가입했어요. 앞으로 잘 부탁 드립니다. 활동 열심히 하겠습니다.");
		
		return new ResponseEntity<>(data, HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
