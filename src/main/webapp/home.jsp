<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>
    <%@ include file="components/bootstrapCss.jsp"%>
   <style>
    .bg-lightblue {
      background-color: LightBlue !important;
    }
    
    .btn.bg-lightblue,
    .btn.bg-lightblue:hover {
        background-color: LightBlue;
        color: black;
        border: 2px solid black;
    }
</style>
  </head>
  <body class="bg-lightblue text-black">
<%
	User validateUserSession = (User) session.getAttribute("userData");
	if (validateUserSession == null) {
		response.sendRedirect("login.jsp");
	} else {
	%>
	<%@include file="components/homenavbar.jsp"%>

	<%
	User sessionUser = (User) session.getAttribute("userData");
	%>
	<h4 class="text-center" style="font-family:cursive;">
		Welcome
		<%=sessionUser.getName().toUpperCase()%>
		to Home Page
	</h4>
	
	<% String msg = (String)session.getAttribute("addSuccess");%>						
	 <% if(msg!=null) {
%>
		<p class="text-center text-success fs-4" style="font-family:cursive;"><%= msg %></p>
<%
		session.removeAttribute("success");
	}	
%>
<div class="row">
  <div class="col-md-12 d-flex justify-content-center">
   <a href="addnotes.jsp">
      <button type="button" class="btn bg-white text-black" style="font-family:cursive;">Add Notes</button>
     </a>
     </div>
</div>
<% } %>

  </body>
</html>