<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${name}</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/css/lesson06/storeReview-style.css" type="text/css">
</head>
<body>
	<div id="wrap" class="container">
		<header>
			<span class="header-text">배탈의 민족</span>
		</header>
		<section class="contents">
			<div>
				<span class="display-3">${name} - 리뷰</span>
			</div>
			<c:if test="${empty storeReview}">
				<div class="notReview display-4 font-weight-bold">작성된 리뷰가 없습니다.</div>
			</c:if>
			<c:if test="${!empty storeReview}">
				<article>
					<c:forEach items="${storeReview}" var="review">
						<div class="review-box mt-4">
							<div class="review-info">
								<div class="d-flex">
									<div class="review-userName">${review.userName}</div>
									<div class="review-point">
										<c:forEach begin="1" end="5" step="1" var="index">
											<c:choose>
												<c:when test="${(review.point - index) eq 0.5}">
													<img src="/img/star_half.png" width="20px">
												</c:when>
												<c:when test="${review.point >= index}">
													<img src="/img/star_fill.png" width="20px">
												</c:when>
												<c:otherwise>
													<img src="/img/star_empty.png" width="20px">
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</div>
								</div>
								<div class="review-date"><fmt:formatDate value="${review.updatedAt}" pattern="yyyy년 M월 d일" /></div>
								<h4 class="mt-3 mb-2">${review.review}</h4>
								<span class="review-menu">${review.menu}</span>
							</div>
						</div>
					</c:forEach>
				</article>
			</c:if>
		</section>
		<hr>
		<footer>
			<div class="brand-text">(주)우와한형제</div>
			<div class="center-text mt-2">고객센터 : 1500-1500</div>
		</footer>
	</div>
</body>
</html>