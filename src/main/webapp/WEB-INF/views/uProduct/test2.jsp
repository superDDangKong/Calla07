<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.slide_div img {
	margin: auto;
}

.slide_div_wrap {
	padding: 15px 0 15px 0;
	background: #e6e9f6;
}

.image_wrap img {
	max-width: 85%;
	height: auto;
	display: block;
	margin: auto;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Calla</title>
</head>
<body>

	<div class="slide_div_wrap">

		<div class="slide_div">
			<div>
				<a> <img src="../resources/img/bnA_w01_a8daff.jpg"
					style="width: 1000px">
				</a>
			</div>
			<div>
				<a> <img src="../resources/img/bnD_w01_c3c5f7.jpg"
					style="width: 1000px">
				</a>
			</div>
			<div>
				<a> <img src="../resources/img/bnK_w01_c3c5f7.jpg"
					style="width: 1000px">
				</a>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<%@ include file="../sidebar2.jspf"%>
			<main class="container col-md-6 ms-sm-auto col-lg-6 px-md-4">
				<c:if test="${not empty memberNickname }">
					<h5>${memberNickname }님환영합니다!</h5>
					<hr>
					회원님을 위한 추천 상품 리스트 ↓ ↓ ↓
				</c:if>
				<div class="container">
					<h1 class="display-4">공용상품</h1>
				</div>
				<section class="py-5">
					
				</section>

				<div class="container">
					<h1 class="display-4">중고상품</h1>
				</div>

				
			</main>
			<%@ include file="../sidebarRight.jspf"%>
		</div>
	</div>


	<%@ include file="../footer.jspf"%>

	<script>
		var $j = jQuery.noConflict();

		$j(document).ready(function() {
			$j(".slide_div").slick({
				dots : true,
				autoplay : true,
				autoplaySpeed : 5000
			});
		});
	</script>


</body>
</html>
