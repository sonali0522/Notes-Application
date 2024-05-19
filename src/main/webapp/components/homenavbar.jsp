<%@page import="com.org.dto.User"%>
<nav class="navbar navbar-expand-lg bg-body-tertiary shadow-lg p-1 mb-3  rounded">
        <div class="container-fluid">
          <img src="SCROLL (2).png" alt="Logo" width="350" height="100" class="d-inline-block align-text-top">
          <a class="navbar-brand fs-3" href="home.jsp"></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <% 
				User use =(User)session.getAttribute("userData");
			%>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">           
                <li class="nav-item fs-5 mx-2"><a class="nav-link active bg-lightblue text-black rounded-3 py-1 px-2"
                    aria-current="page" href="profile.jsp" style="font-family:cursive;">Profile</a></li>
                <li class="nav-item fs-5 mx-2"><a class="nav-link active bg-lightblue text-black rounded-3 py-1 px-2"
                    aria-current="page" href="changePassword.jsp?id=<%= use.getId() %>" style="font-family:cursive;">Change Password</a></li>
                <li class="nav-item fs-5 mx-2"><a class="nav-link active bg-lightblue text-black rounded-3 py-1 px-2"
                    aria-current="page" href="isLogOut.jsp" style="font-family:cursive;">Logout</a></li>    
            </ul>
        </div>
        </div>
      </nav>