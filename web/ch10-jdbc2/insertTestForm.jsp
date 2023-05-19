<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
<link rel="stylesheet" href="style.css" type="text/css">
<script type="text/javascript" src="script.js"></script>
</head>
<body>
<!-- 
1. style.css 링크
2. 자바스크립트를 이용해서 유효성 체크
3. 등록폼
   등록폼의 파라미터네임 name,price,stock,origin
 -->
<div class="page-main">
	<h2>상품 등록</h2>
	<form id="myForm" action="insertTest.jsp" method="post">
		<ul>
			<li>
				<label for="name">상품명</label>
				<input type="text" name="name" id="name" size="20" maxlength="10">
			</li>
			<li>
				<label for="price">가격</label>
				<input type="number" name="price" id="price" min="1" max="999999999">
			</li>
			<li>
				<label for="stock">재고</label>
				<input type="number" name="stock" id="stock" min="0" max="999999999">
			</li>
			<li>
				<label for="origin">원산지</label>
				<input type="text" name="origin" id="origin" size="20" maxlength="10">
			</li>
		</ul>
		<div class="align-center">
			<input type="submit" value="보내기"> 
		    <input type="button" value="목록" onclick="location.href='selectTest.jsp'">
		</div>
	</form>
</div>
</body>
</html>





