<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<body>

	<div class="card" style="width: 90%; margin: 20px;">

		<div class="card-body">
			<form class="m-3">
				<div class="form-group">
					<label for="exampleInputEmail1">name</label> <input type="text"
						id="logname" class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" placeholder="Enter email"> <small
						id="emailHelp" class="form-text text-muted">We'll never
						share your email with anyone else.</small>
				</div>

				<label for="exampleInputEmail1">password</label> <input
					type="password" id="logpassword" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Enter email"> <small id="emailHelp"
					class="form-text text-muted">We'll never share your email
					with anyone else.</small>
		</div>

		<button type="button" id="loginbtn" class="btn btn-primary">Submit</button>
		</form>

	</div>
	</div>

	<script type="text/javascript" src="../jquery/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="../jquery/jquery.cookie.js"></script>
	<script type="text/javascript" src="../jquery/main.js"></script>
</body>
</html>