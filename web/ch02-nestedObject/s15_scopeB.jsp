<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-17
  Time: 오전 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP 4개 기본객체와 영역</title>
</head>
<body>
page 영역의 msg1 =
<%= pageContext.getAttribute("msg1") %><br>
request 영역의 msg2 =
<%= request.getAttribute("msg2") %><br>
session 영역의 msg3 =
<%= session.getAttribute("msg3") %>
</body>
</html>
