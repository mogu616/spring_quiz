<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/css/lesson06/storeList-style.css" type="text/css">

</head>
<body>
	<div id="wrap" class="container">
		<header>
			<span class="header-text">배탈의 민족</span>
		</header>
		<section class="contents">
			<div>
				<span class="display-3">우리동네 가게</span>
			</div>
			<article>
				<c:forEach items="${storeList}" var="store">
				<a href="/lesson06/quiz06/store_review?id=${store.id}&name=${store.name}">
					<div class="store-box mt-4">
						<div class="store-info">
							<div class="store-name">${store.name}</div>
							<div class="store-tel mt-2">전화번호 : ${store.phoneNumber}</div>
							<div class="store-tel">주소 : ${store.address}</div>
						</div>
					</div>
				</a>
				</c:forEach>
			</article>
		</section>
		<hr>
		<footer>
			<div class="brand-text">(주)우와한형제</div>
			<div class="center-text mt-2">고객센터 : 1500-1500</div>
		</footer>
	</div>
</body>
</html>