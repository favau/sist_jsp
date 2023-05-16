<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-16
  Time: 오후 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>헤더 목록 출력</title>
</head>
<body>
<%
  Enumeration headerEnum = request.getHeaderNames();
  while(headerEnum.hasMoreElements()){
    //헤더 네임 구하기
    String headerName = (String)headerEnum.nextElement();
    //헤더 벨류 구하기
    String headerValue = request.getHeader(headerName);
%>
<%= headerName %> = <%= headerValue%>
<%
  }
%>
</body>
</html>
