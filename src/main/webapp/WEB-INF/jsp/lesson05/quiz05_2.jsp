<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과거 날씨</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/css/lesson05/quiz05-style.css" type="text/css">
</head>
<body>
	<div id="wrap">
		<div class="d-flex">
			<aside>
				<div class="logo d-flex align-items-center justify-content-center">
					<h5 class="text">기상청</h5>
				</div>
				<ul class="nav flex-column">
					<li class="nav-item font-weight-bold"><a href="#" class="nav-link text">날씨</a></li>
					<li class="nav-item font-weight-bold"><a href="#" class="nav-link text">날씨입력</a></li>
					<li class="nav-item font-weight-bold"><a href="#" class="nav-link text">테마날씨</a></li>
					<li class="nav-item font-weight-bold"><a href="#" class="nav-link text">관측 기후</a></li>
				</ul>
			</aside>
			<section class="container">
				<div class="content2-top">
					<h2>날씨 입력</h2>
				</div>
				<div class="content2-bottom">
					<form method="post" action="/lesson05/quiz05/3">
						<div class="d-flex">
							<div class="form-group d-flex">
								<label for="date">날짜</label>
								<input type="text" id="date" name="date" class="form-control col-3">
							</div>
							<div class="form-group d-flex">
								<label for="weather">날씨</label>
								<select class="form-control" name="weather">
									<option selected>맑음</option>
									<option>구름조금</option>
									<option>흐림</option>
									<option>비</option>
								</select>
							</div>
							<div class="form-group d-flex">
								<label for="microDust">미세먼지</label>
								<select name="microDust" class="form-control">
									<option selected>좋음</option>
									<option>보통</option>
									<option>나쁨</option>
									<option>최악</option>
								</select>
							</div>
						</div>
						<div class="d-flex">
							<div class="form-group d-flex">
								<label for="temperatures">기온</label>
								<input type="text" id="temperatures" name="temperatures" class="form-control col-3">
							</div>
							<div class="form-group d-flex">
								<label for="precipitation">강수량</label>
								<input type="text" id="precipitation" name="precipitation" class="form-control col-3">
							</div>
							<div class="form-group d-flex">
								<label for="windSpeed">풍속</label>
								<input type="text" id="windSpeed" name="windSpeed" class="form-control col-3">
							</div>
						</div>
						<input type="submit" class="btn btn-primary" value="저장">
					</form>
				</div>
			</section>
		</div>
		<footer class="d-flex">
			<div class="logo d-flex align-items-center justify-content-center">
				<h4 class="logo-text">기상청</h4>
			</div>
			<div class="addressd-flex justify-content-center ml-2 mt-3">
				<div>
					<div class="address-text">(07062) 서울시 동작구 여의대방로16길 61</div>
					<div class="address-text">Copyright@2020 KMA. All Rights RESERVED.</div>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>