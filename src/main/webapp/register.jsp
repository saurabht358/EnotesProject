<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<%@include file="allComponents/allCSS.jsp"%>
<style type="text/css">
	<%@include file="css/style.css" %>
</style>
</head>
<body>
	<%@include file="allComponents/navbar.jsp"%>

	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-6 offset-3">
				<div class="card mt-4">
					<div class="card-header text-center bg-custom ">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Registration</h4>
					</div>

					<%
					String regMsg = (String) session.getAttribute("reg-success");
					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%><a
							href="login.jsp">Go to Login</a>
					</div>
					<%
					}
					%>
					<%
					String failedMsg = (String) session.getAttribute("failed-msg");
					if (failedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=failedMsg%></div>
					<%
					}
					%>

					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label>Enter Name </label> <input type="text"
									class="form-control" id="exampleInputName1" name="fname" required>

							</div>
							<div class="form-group">
								<label>Enter Email </label> <input type="email"
									class="form-control" id="exampleInputEmail1" name="uemail" required>

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword" required>
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	<%@include file="allComponents/footer.jsp"%>
</body>
</html>