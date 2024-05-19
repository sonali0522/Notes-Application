<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="components/bootstrapCss.jsp" %>
<style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f8f9fa;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 400px;
      margin: 100px auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .alert {
      background-color: #ffc107;
      color: #000;
      border-color: #ffc107;
    }

    .btn {
      margin-top: 20px;
    }
  </style>
</head>
<body>
 <div class="container">
    <div class="alert" role="alert" style="font-family:cursive;">
      Are you sure you want to logout?
    </div>
    <div class="text-center">
    <a href="logout.jsp">
      <button type="button" class="btn btn-danger" style="font-family:cursive;">Yes</button>
     </a>
     <a href="home.jsp">
      <button type="button" class="btn btn-secondary" style="font-family:cursive;">No</button>
      </a>
    </div>
  </div>
</body>
</html>