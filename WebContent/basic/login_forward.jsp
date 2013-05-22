<%@page import="pojos.UserPOJO"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%!HashMap<String,UserPOJO> users;

	//override jspInit ---- creating empty map & its population
	public void jspInit() {
		System.out.println("in init");
		users = new HashMap<String, UserPOJO>();
		users.put("a@gmail", new UserPOJO("a@gmail", "123", "abc123", 300));
		users.put("b@gmail", new UserPOJO("b@gmail", "1234", "abc1234", 600));
		users.put("c@gmail", new UserPOJO("c@gmail", "12345", "abc12345", 500));
	}%>
<body>
	<%
		//get rq params
		String email = request.getParameter("u_email");
		String pass = request.getParameter("u_pass");
		UserPOJO u=null;
		if (users.containsKey(email))
			if (users.get(email).getPassword().equals(pass))
			{
				out.print("from 1st page.....");
		//		out.flush();
				 u=users.get(email);
				 //add user dtls to req scope
				 request.setAttribute("user_dtls",u);
				 RequestDispatcher rd=request.getRequestDispatcher("two.jsp");
				 if (rd != null)
					 rd.forward(request, response);
				 else 
					 System.out.println("rd err"); 
				 out.print("post -forward contents......");
			}
	

	  else { %>
	<h3>Invalid Login, Pls <a href="login.html">Retry</a> </h3>
	
	<%	
	}
	%>
</body>
<%!public void jspDestroy() {
		users = null;
	}%>
</html>