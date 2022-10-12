<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
</head>
<body>
	<div class="container">
		<h1>즐겨 찾기 추가하기</h1>
		<div class="form-group">
			<label for="name">제목</label>
			<input type="text" id="name" class="form-control">			
		</div>
		<div class="form-group">
			<label for="url">주소</label>
			<div class="d-flex">
				<input type="text" id="url" class="form-control">
				<button type="button" id="nameCheckBtn" class="btn btn-info ml-3">중복확인</button>
			</div>
			<small id="nameStatusArea"></small>
		</div>
		<button type="button" id="addBtn"class="btn btn-success">추가</button>
	</div>
<script>
$(document).ready(function() {
	$('#nameCheckBtn').on('click', function() {
		$('nameStatusArea').empty();
		
		let name = $('#name').val().trim();
		
		$.ajax({
			type:"GET"
			, url:"/lesson06/quiz02/is_duplication"
			, data:{"name":name}
			
			, success: function(data) {
				alert("his");
			}
		});
	});
	
	
	$('#addBtn').on('click', function() {
		let name = $('#name').val().trim();
		if (name.length < 1) {
			alert("제목을 입력해주세요.");
			return;
		}
		
		let url = $('#url').val().trim();
		if (url == "") {
			alert("주소를 입력해주세요.");
			return;
		}
		
		if (!url.startsWith("http://") && !url.startsWith("https://")) {
			alert("주소앞에 http 또는 https를 입력해주세요.")
			return;
		}
		
		$.ajax({
			type:"POST"
			, url:"/lesson06/quiz01/2"
			, data:{"name":name, "url":url}
		
			, success: function(data) {
				alert(data);
				location.href = "/lesson06/quiz01/3"
			}
			, complete: function(data) {
				alert("완료");
			}
			, error: function(e) {
				alert("error " + e)
			}
			
		});
	});
});
</script>

</body>
</html>