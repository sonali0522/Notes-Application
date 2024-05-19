<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="components/bootstrapCss.jsp" %>
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
<% User validateUserSession = (User)session.getAttribute("userData");
		if (validateUserSession == null)
		{
			response.sendRedirect("login.jsp");
		}
		else {
		%>
		<%@ include file="components/homenavbar.jsp" %>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
					<% 
						int id = Integer.parseInt(request.getParameter("id"));				
					%>
					<% 
						String msg = (String)session.getAttribute("fail");
						if(msg!=null) { 
					%>
						<h5 style="color: red;" style="font-family:cursive;"><%= msg %></h5>
					<%	
					    session.removeAttribute("fail");
					    }
					%>
					<% 
                        String msg1 = (String)session.getAttribute("success");
                        if(msg1 != null) { 
                        %>
                            <h5 style="color: green;" style="font-family:cursive;"><%= msg1 %></h5>
                        <%  
                            session.removeAttribute("success");
                        }
                        %>
						<p class="fs-4 text-center" style="font-family:cursive;"><b>Change Password</b></p>
						<form action="changePassword" method="post">
							<div class="mb-3">
								<label class="form-label" style="font-family:cursive;">Enter Old Password</label> <input name="oldPassword"
									type="password" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label" style="font-family:cursive;">Enter New Password</label> <input name="newPassword"
									type="password" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label" style="font-family:cursive;">Confirm New Password</label> <input name="confirmPassword"
									type="password" class="form-control" required>
							</div>
							<input type="hidden" name="id" value="<%= validateUserSession.getId() %>">
							<button type="submit" class="btn bg-lightblue text-black col-md-12" style="font-family:cursive;">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
    <%
    } 
	%>
</body>
</html>