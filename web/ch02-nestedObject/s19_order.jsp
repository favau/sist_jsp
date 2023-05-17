<%-- Created by IntelliJ IDEA.
  Date: 2023-05-17 Time: 오후 5:13 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>주문서 확인</title>
</head>
<body>
<%--
짜장면 4000원, 짬뽕 5000원, 볶음밥 6000원

[출력 예시]
짜장면 2개
짬뽕 1개
총 지불금액 : 13000원
--%>
<%
    request.setCharacterEncoding("utf-8");
%>
<%
    int[] count = new int[3];
    String[] name = {"짜장면","짬뽕","볶음밥"};
    count[0] = Integer.parseInt(request.getParameter("food_c0") == null ? "0" : request.getParameter("food_c0"));
    count[1] = Integer.parseInt(request.getParameter("food_c1") == null ? "0" : request.getParameter("food_c1"));
    count[2] = Integer.parseInt(request.getParameter("food_c2") == null ? "0" : request.getParameter("food_c2"));

    int sum = count[0]*4000 + count[1]*5000 + count[2]*6000;
    for(int i=0;i<count.length;i++) {
        if(count[i] != 0) {// 갯수가 0보다 크면 출력
%>
<%= name[i] %> : <%= count[i] %> 개<br>
<%
        }
    }
%>
    총 지불금액 : <%= sum %>원


</body>
</html>