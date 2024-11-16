
<%@page import="com.User.UserDetails"%>
<nav class="navbar navbar-expand-lg navbar-light  bg-custom">
	<strong><a href="index.jsp" class="navbar-brand" href="#">E-Notes</a></strong>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a href="index.jsp" class="nav-link"
				href="#"><i class="fa fa-home" aria-hidden="true"></i> Home <span
					class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="#"><i
					class="fa fa-plus-circle" aria-hidden="true"></i> Add Notes</a></li>
			<li class="nav-item"><a class="nav-link " href="#"><i
					class="fa fa-book" aria-hidden="true"></i> View Notes</a></li>
		</ul>

		<%
		UserDetails user = (UserDetails) session.getAttribute("userD");
		if (user != null) {
		%>

		<a href="register.jsp" class="btn btn-light my-2 my-sm-0 mr-2" data-toggle="modal" data-target="#exampleModal"
			type="submit"><i class="fa fa-user-circle-o" aria-hidden="true"></i>

			<%=user.getName()%> </a> <a href="login.jsp"
			class="btn btn-light my-2 my-sm-0" type="submit"><i
			class="fa fa-sign-out" aria-hidden="true"></i> LogOut</a>

		<%
		} else {
		%>
		<a href="register.jsp" class="btn btn-light my-2 my-sm-0 mr-2"
			type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
		<a href="login.jsp" class="btn btn-light my-2 my-sm-0" type="submit"><i
			class="fa fa-user" aria-hidden="true"></i> Login</a>

		<%
		}
		%>
		
 

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       	<div class="container text-center">
       	<i class=" fa fa-user fa-3x"></i>
       	<h5></h5>
       	
       	</div>
       	<table class="table">
       		<tbody>
       		<tr>
       		<th>User Id</th>
       		<td></td>
       		</tr>
       		<tr>
       		<th>Full Name</th>
       		<td></td>
       		</tr>
       		<tr>
       		<th>Email Id</th>
       		<td></td>
       		</tr>
       		</tbody>
       	</table>
      
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
	</div>
	 
</nav>
