<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.DriverManager" %>
    <%@ page import="java.sql.SQLException" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.PreparedStatement" %>
    <%@ include file="dbInfo.jspf" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 등록 처리</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%
	//전송된 데이터 인코딩 처리
	request.setCharacterEncoding("UTF-8");
	
	//전송된 데이터 반환
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String passwd = request.getParameter("passwd");
	String content = request.getParameter("content");

	//DB 연동
	Connection conn =null;
	PreparedStatement pstmt = null;
	String sql = null;
	
	try{
		//JDBC 수행 1단계 : 드라이버 로드
		Class.forName(driverName);
		//JDBC 수행 2단계 : Connection 객체 생성
		conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		//SQL문 작성
		sql = "INSERT INTO tboard (num,name,title,passwd,content,reg_date) VALUES(tboard_seq.nextval,?,?,?,?,SYSDATE)";
		
		//JDBC 3단계
		pstmt = conn.prepareStatement(sql);
		//?에 바인딩
		pstmt.setString(1,name);
		pstmt.setString(2,title);
		pstmt.setString(3,passwd);
		pstmt.setString(4,content);
		pstmt.executeUpdate();
		%>
		<div class ="result-display">
			<div class="align-center">
				글 등록 성공!<br>
				<input type="button" value="목록 보기" onclick="location.href='s04_selectTest.jsp'">
			</div>
		</div>
		<% 
	} catch(Exception e){
		%><div class ="result-display">
			<div class="align-center">
				글 등록 실패!!<br>
				<input type="button" value="글쓰기" onclick="location.href='s02_insertTestForm.jsp'">
			</div>
		</div> <% 
		
		e.printStackTrace();
	}finally{
		//자원 정리
		if(pstmt!=null)try{pstmt.close();}catch(SQLException e){}
		if(conn!=null)try{conn.close();}catch(SQLException e){}
	}
%>
</body>
</html>