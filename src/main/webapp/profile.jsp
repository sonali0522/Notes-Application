<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Page</title>
<%@ include file="components/bootstrapCss.jsp"%>
<style>
    .bg-lightblue {
      background-color: LightBlue;
    }
    .btn.bg-lightblue:hover {
        background-color: LightBlue;
    }
  </style>
</head>
<body class="bg-lightblue text-black">
    <%
	User validateUserSession = (User) session.getAttribute("userData");
	if (validateUserSession == null) {
		response.sendRedirect("login.jsp");
	} 
	else {
	%>
<%@include file="components/homenavbar.jsp"%>
	<%
	User details = (User)session.getAttribute("userData");
	%>
    <h2 style=" color : black" style="font-family:cursive;">
    <%= "My profile : " %>
    </h2>
  
   <h5>
   Name : <%= details.getName() %><br>
   Age : <%= details.getAge() %><br>
   Mobile : <%= details.getMobile() %><br>
   Email : <%= details.getEmail() %><br>
   </h5>
<%
} 
%>

</body>
</html>