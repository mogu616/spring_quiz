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
<style>
#wrap {width:1200px; margin:auto;}

aside {width:200px; height:900px; background-color:#6495EC;}
aside .text {color:white; font-weight:bold;}
aside .logo {width:200px; height:50px;}

.content {width:1000px; height:900px;}

footer {width:1200px; height:100px;}
</style>
</head>
<body>
	<div id="wrap">
		<div class="d-flex">
			<aside>
				<div class="logo text d-flex align-items-center justify-content-center">
					기상청
				</div>
				<ul class="nav flex-column ">
					<li class="nav-item font-weight-bold"><a href="#" class="nav-link text">날씨</a></li>
					<li class="nav-item font-weight-bold"><a href="#" class="nav-link text">날씨입력</a></li>
					<li class="nav-item font-weight-bold"><a href="#" class="nav-link text">테마날씨</a></li>
					<li class="nav-item font-weight-bold"><a href="#" class="nav-link text">관측 기후</a></li>
				</ul>
			</aside>
			<div class="content container">
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
							<td>
								<fmt:formatDate value="${weather.date}" pattern="yyyy년 M월 d일"/>
							</td>
							<td>
								<c:choose>
									<c:when test="${weather.weather eq '비'}">
										<img src="http://marondal.com/material/images/dulumary/web/jstl/rainy.jpg">
									</c:when>
									<c:when test="${weather.weather eq '흐림'}">
										<img src="http://marondal.com/material/images/dulumary/web/jstl/cloudy.jpg">
									</c:when>
									<c:when test="${weather.weather eq '구름조금'}">
										<img src="http://marondal.com/material/images/dulumary/web/jstl/partlyCloudy.jpg">
									</c:when>
									<c:when test="${weather.weather eq '맑음'}">
										<img src="http://marondal.com/material/images/dulumary/web/jstl/sunny.jpg">
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
			</div>
		</div>
		<footer class="bg-success"></footer>
	</div>
</body>
</html>