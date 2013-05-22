<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>From 2nd page....</h3><br/>
 1st : ${requestScope.user_dtls}<br/>
2nd : ${param.user_dtls}<br/>
 3rd : ${param.u_email}<br/>
</body>
</html>