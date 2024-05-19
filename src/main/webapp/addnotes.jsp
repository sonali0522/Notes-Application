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
<%@ include file="components/homenavbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center" style="font-family:cursive;">Add Notes Here</p>						
						
						<form action="addnotes" method="post">
							<div class="mb-3">
								<label class="form-label" style="font-family:cursive;">Description</label> <input
									name="title" type="text" class="form-control" required>
							</div>
							<div class="mb-3">
							   <textarea rows="7" class="form-control" cols="45" style="font-family:cursive;" placeholder="Add your notes here.." name="description"></textarea>								
					        </div>
					        <div class="row">
                               <div class="col-md-12 d-flex justify-content-center">
							     <button type="submit" class="btn bg-lightblue text-black" style="font-family:cursive;">Add</button>
							   </div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>