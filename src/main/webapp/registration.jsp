<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<%@include file="all_component/allcss.jsp"%>

</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user fa-3x" aria-hidden="true"></i>
						<h4>Registration</h4>
					</div>


					<%
					String regMsg = (String) session.getAttribute("reg-success");

					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%> Login <a href="login.jsp">Click Here</a></div>
					<%
					session.removeAttribute("reg-success");
					}
					%>

					<%
					String FailedMsg = (String) session.getAttribute("failed-msg");

					if (FailedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%= FailedMsg %></div>
					<%
					session.removeAttribute("failed-msg");
					}
					%>

					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="mb-3">
								<label>Enter Full Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname">
								<div id="emailHelp" class="form-text"></div>
							</div>
							<div class="mb-3">
								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">
								<div id="emailHelp" class="form-text"></div>
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">
									Enter Password</label> <input type="password" class="form-control"
									id="exampleInputPassword1" name="upassword">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
		<div class="container-fluid bg-dark mt-3">
<p class="text-center text-white">Designed and developed by Shubh Patel</p>
<p class="text-center text-white">All Rights Reserved @CodeWithShubh</p>
</div>
</body>
</html>