<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("<h3> Hello ," + request.getParameter("u_name") + "<br/>");
		out.print("Your prefs are  ," + request.getParameter("u_prefs")
				+ "<br/>");
	%>
</body>
</html>