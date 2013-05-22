<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Via EL syntax, from 1st page </h1>
<h3> Hello, ${param.u_name} <br/>
Ur Prefs are ${param.u_prefs}<br/>
<%
 session.setAttribute("userName",request.getParameter("u_name"));
session.setAttribute("userPrefs",request.getParameter("u_prefs"));
String encodeURL=response.encodeURL("next.jsp");
%>

<a href="<%= encodeURL %>">Next</a>
</h3>
</body>
</html>