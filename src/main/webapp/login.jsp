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
  </style>
  </head>
  <body class="bg-lightblue text-black">
    <%@ include file="components/navbar.jsp"%>
      <div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Login</p>
						<form action="login" method="post">
							<div class="mb-3">
								<label class="form-label">Email Address</label> <input
									name="email" type="email" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									name="password" type="password" class="form-control" required>
							</div>
							<button type="submit" class="btn bg-lightblue text-black col-md-12">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

  </body>
</html>