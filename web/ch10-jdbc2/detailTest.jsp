<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ include file="dbInfo.jspf" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 정보 보기</title>
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = null;
	
	try{
		//JDBC 수행1단계 : 드라이버 로드
		Class.forName(driverName);
	
		//JDBC 수행2단계 : Connection 객체 생성(인증 받아서 DB 연결)
		conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	
		//SQL문 작성
		sql = "SELECT * FROM product WHERE num=?";
		
		//JDBC 수행3단계 : PreparedStatement 객체 생성
		pstmt = conn.prepareStatement(sql);
		//?에 데이터 바인딩
		pstmt.setInt(1, num);		
		
		//JDBC 수행4단계 : SQL문을 테이블에 반영하고 결과행을 ResultSet에 담음
		rs = pstmt.executeQuery();
		//상품명, 가격, 재고, 원산지, 등록일
		if(rs.next()){
			int tnum = rs.getInt("num");
			String name = rs.getString("name");
			int price = rs.getInt("price");
			int stock = rs.getInt("stock");
			String origin = rs.getString("origin");
			String reg_date = rs.getString("reg_date");
%>
<div class="page-main">
	<h2>상품 정보</h2>
	<ul>
		<li>번호 : <%= tnum %></li>
		<li>상품명 : <%= name %></li>
		<li>가격 : <%= String.format("%,d원",price) %></li>
		<li>재고 : <%= String.format("%,d원",stock) %></li>
		<li>원산지 : <%= origin %></li>
		<li>등록일 : <%= reg_date %></li>
	</ul>
	<hr width="100%" size="1" noshade="noshade">
	<div class="align-right">
		<input type="button" value="수정" 
		        onclick="location.href='updateTestForm.jsp?num=<%= num %>'">
		<input type="button" value="삭제" 
		        onclick="location.href='deleteTestForm.jsp?num=<%= num %>'"> 
		<input type="button" value="목록"
	             onclick="location.href='selectTest.jsp'">               
	</div>
</div>
<%			
		}else{
%>
<div class="result-display">
    <div class="align-center">
	상품 정보가 없습니다.<br>
	<input type="button" value="목록"
	             onclick="location.href='selectTest.jsp'">
	</div>
</div>	
<%			
		}
	}catch(Exception e){
%>
<div class="result-display">
    <div class="align-center">
		오류발생! 상품 정보 호출 실패!<br>
		<input type="button" value="목록"
	             onclick="location.href='selectTest.jsp'">
	</div>
</div>	
<%		
		e.printStackTrace();
	}finally{
		//자원정리
		if(rs!=null)try{rs.close();}catch(SQLException e){}
    	if(pstmt!=null)try{pstmt.close();}catch(SQLException e){}
		if(conn!=null)try{conn.close();}catch(SQLException e){}
	}
	
%>
</body>
</html>










