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

				<!-- <div class="form-group">
					<label for="exampleInputEmail1">Payment ID</label> 
					<input type="text" id="paymentId" class="form-control"
						aria-describedby="emailHelp" placeholder="Enter payment ID">

				</div> -->

				<div class="form-group">
					<label for="exampleInputEmail1">Account number</label> <input
						type="text" id="accountNumber" class="form-control"
						aria-describedby="emailHelp" placeholder="Enter account number">

				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Amount</label> <input
						type="text" id="amount" class="form-control"
						aria-describedby="emailHelp" placeholder="Enter amount">
				</div>

				<div class="form-group">
					<label for="exampleInputPassword1">Type</label> <input type="text"
						id="type" class="form-control" aria-describedby="emailHelp"
						placeholder="Enter type">
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Date</label> <input type="text"
						id="date" class="form-control" aria-describedby="emailHelp"
						placeholder="Enter date">

				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Description</label> <input
						type="text" id="description" class="form-control"
						aria-describedby="emailHelp" placeholder="Enter description">

				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Buyer name</label> <input
						type="text" id="buyerName" class="form-control"
						aria-describedby="emailHelp" placeholder="Enter buyer's name">

				</div>

				<button type="button" id="btnsavePayment" class="btn btn-primary">Submit</button>
				<button type="button" id="btnupdate" class="btn btn-warning">Update</button>

			</form>

			<div>
				<h2>Bordered Table</h2>
				<table class="table table-hover">
					<thead>
						<tr class="bg-info text-white">
							<th>PaymentID</th>
							<th>Account Number</th>
							<th>Amount</th>
							<th>Type</th>
							<th>Date</th>
							<th>Description</th>
							<th>Buyer Name</th>

						</tr>
					</thead>
					
					<tbody id="proBody">

					</tbody>
					
				</table>
			</div>

		</div>
	</div>

	<script type="text/javascript" src="../jquery/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="../jquery/jquery.cookie.js"></script>
	<script type="text/javascript" src="../jquery/main.js"></script>

</body>
</html>