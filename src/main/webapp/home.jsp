<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>
    <%@ include file="components/bootstrapCss.jsp"%>
    <style>
    .bg-lightblue {
      background-color: LightBlue;
    }
  </style>
  </head>
  <body class="bg-lightblue text-black">
    <%@ include file="components/homenavbar.jsp"%>
    
    <h1><center> Welcome to Home Page </center></h1>
         
      <div class="position-absolute bottom-0 end-0 p-3 g-col-12">   
      <img src="SCROLL.png" alt="Logo" width="100" height="100" class=" btn d-inline-block align-text-top ">
        </div>
  </body>
</html>