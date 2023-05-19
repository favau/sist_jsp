<%-- Created by IntelliJ IDEA.
  Date: 2023-05-19 Time: 오후 4:33 --%>
<%@ page contentType="text/plain; charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%
String name = request.getParameter("name");
String age = request.getParameter("age");
%>
이름은 <%= name %>이고 나이는 <%= age %>살이다.