$('#loginbtn').click(() => {

	let logname = $('#logname').val();
	let logpassword = $('#logpassword').val();

	$.ajax({

		type: 'post',
		url: 'http://localhost:8089/User/webapi/acc/login',
		data: JSON.stringify({
			name: logname,
			password: logpassword
		}),
		contentType: 'application/json',
		success: (rsp) => {
			if (rsp.sucess) {
				let tokenObj = rsp.data;
				console.log(tokenObj.token);
				$.cookie('token', tokenObj.token, { expires: 7, path: '/' });
				$.cookie('uname', tokenObj.name, { expires: 7, path: '/' });
				alert(rsp.message);
				window.location = 'payment.jsp';
			} else {
				alert(rsp.message);
			}

		},
		error: (err) => {
			alert(err);
			//console.log("Not Working " + err);
		}

	});




});


$('#btnsave').click(() => {

	let cname = $('#name').val();
	let cemail = $('#email').val();
	let cmobile = $('#mobile').val();
	let cpassword = $('#password').val();

	let token = $.cookie('token');
	let uname = $.cookie('uname');

	if (token !== undefined && uname !== undefined) {
		$.ajax({
			type: 'post',
			url: 'http://localhost:8089/User/webapi/acc/regi',
			headers: {
				'Authcode': token,
				'uname': uname
			},
			data: JSON.stringify({
				email: cname,
				mobile: cemail,
				name: cmobile,
				password: cpassword
			}),
			contentType: 'application/json',
			success: (data) => {
				alert(data);
			},
			error: (err) => {
				alert(err);
			}
		});
	} else {
		window.location = 'login.jsp';
	}






});

$('#btnsavePayment').click(() => {

	//let cId = $('#paymentId').val();
	let cAccountNumber = $('#accountNumber').val();
	let cAmount = $('#amount').val();
	let cType = $('#type').val();
	let cDate = $('#date').val();
	let cDescription = $('#description').val();
	let cBuyerName = $('#buyerName').val();

	let token = $.cookie('token');
	let uname = $.cookie('uname');

	if (token !== undefined && uname !== undefined) {
		$.ajax({
			type: 'post',
			url: 'http://localhost:8089/User/webapi/payments/payment',
			headers: {
				'Authcode': token,
				'uname': uname
			},
			data: JSON.stringify({
				//id: cId,
				accountNo: cAccountNumber,
				amount: cAmount,
				type: cType,
				date: cDate,
				description: cDescription,
				buyerName: cBuyerName
			}),
			contentType: 'application/json',
			success: (data) => {
				alert(data);
			},
			error: (err) => {
				alert(err);
			}
		});
	} else {
		window.location = 'login.jsp';
	}


});

$('#btnupdate').click(()=>{
	
	let cId = $('#paymentId').val();
	let cAccountNo = $('#accountNumber').val();
	let cAmount = $('#amount').val();
	let cType = $('#type').val();
	let cDate = $('#date').val();
	let cDescription = $('#description').val();
	let cBuyerName = $('#buyerName').val();
	
	console.log(cId+''+cAccountNumber+''+cAmount+''+cType+''+cDescription+''+cBuyerName);		

	
	let token = $.cookie('token');
	let uname = $.cookie('uname');

	if (token !== undefined && uname !== undefined) {
		$.ajax({
			type: 'put',
			url: 'http://localhost:8089/User/webapi/payments/payment',
			headers: {
				'Authcode': token,
				'uname': uname
			},
			data: JSON.stringify({
				accountNo: cAccountNo,
		        amount:cAmount,
		        buyerName:cBuyerName,
		        date: cDate,
		        description:cDescription,
				id:Number(cId),
		        type: cType 
			}),
			contentType: 'application/json',
			success: (data) => {
				alert(data.message);
			},
			error: (err) => {
				alert(err);
			}
		});
	} else {
		window.location = 'login.jsp';
	}
		
	
});
