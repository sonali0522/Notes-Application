<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Page</title>
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
    <%@ include file="components/navbar.jsp"%>
      <div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center" style="font-family:cursive;">User Login</p>
						
						<%
							String msg = (String)session.getAttribute("fail");
							if (msg != null) {
							%>
							<p class="text-center text-success fs-4" style="font-family:cursive;"><%=msg%></p>
							<%
							session.removeAttribute("fail");
							}
							%>
						
						<form action="login" method="post">
							<div class="mb-3">
								<label class="form-label" style="font-family:cursive;">Email Address</label> <input
									name="email" type="email" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label" style="font-family:cursive;">Password</label> <input
									name="password" type="password" class="form-control" required>
							</div>
							<button type="submit" class="btn bg-lightblue text-black col-md-12" style="font-family:cursive;">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<!--  -->
  </body>
</html>