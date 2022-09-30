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
					<li class="nav-item font-weight-bold"><a href="/lesson05/quiz05/2" class="nav-link text">날씨입력</a></li>
					<li class="nav-item font-weight-bold"><a href="#" class="nav-link text">테마날씨</a></li>
					<li class="nav-item font-weight-bold"><a href="#" class="nav-link text">관측 기후</a></li>
				</ul>
			</aside>
			<section class="container">
				<h2>과거 날씨</h2>
				<table class="table text-center">
					<thead>
						<tr>
							<th>날짜</th>
							<th>날씨</th>
							<th>기온</th>
							<th>강수량</th>
							<th>미세먼지</th>
							<th>풍속</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${weatherHistory}" var="weather">
						<tr>
							<td><fmt:formatDate value="${weather.date}" pattern="yyyy년 M월 d일"/></td>
							<td>
								<c:choose>
									<c:when test="${weather.weather eq '맑음'}">
										<img src="/img/sunny.jpg">
									</c:when>
									<c:when test="${weather.weather eq '구름조금'}">
										<img src="/img/partlyCloudy.jpg">
									</c:when>
									<c:when test="${weather.weather eq '흐림'}">
										<img src="/img/cloudy.jpg">
									</c:when>
									<c:when test="${weather.weather eq '비'}">
										<img src="/img/rainy.jpg">
									</c:when>
								</c:choose>
							</td>
							<td>${weather.temperatures}℃</td>
							<td>${weather.precipitation}mm</td>
							<td>${weather.microDust}</td>
							<td>${weather.windSpeed}km/h</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
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