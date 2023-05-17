<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-17
  Time: 오전 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head>
    <title>application 기본객체 속성 보기</title>
</head>
<body>
<%
  Enumeration attrEnum = application.getAttributeNames(); //속성명만 읽음
  while(attrEnum.hasMoreElements()){
    //속성명
    String name = (String)attrEnum.nextElement();
    //속성값
    Object value = application.getAttribute(name);
%>
application 속성 : <b><%= name %></b> = <%= value %><br>

<%
  }
%>


</body>
</html>
