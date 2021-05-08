$( document ).ready(() => {
		 
		let token = $.cookie('token');
		let uname = $.cookie('uname');

		if (token !== undefined && uname !== undefined) {
			$.ajax({
				type: 'get',
				url: 'http://localhost:8089/User/webapi/payments/payment',
				headers: {
					'Authcode': token,
					'uname': uname
				},
				contentType: 'application/json',
				success: (data) => {
					$('#proBody').empty();
					for(let val of data){
						
						let row = ` <tr>
								<td>${val.id}</td>
								<td>${val.accountNo}</td>
								<td>${val.amount}</td>
								<td>${val.type}</td>
								<td>${val.date}</td>
								<td>${val.description}</td>
								<td>${val.buyerName}</td>
								<td><button type="button" onClick="deleteRow(this)" class="btn btn-danger">Delete</button></td>
								
								</tr>`;
						$('#proBody').append(row);
						
						$("#proBody tr").unbind("click");
						
						$("#proBody tr").click(function () {
							    let cid = $($(this).children().get(0)).text();
							    let caccountNo = $($(this).children().get(1)).text();
							    let camount = $($(this).children().get(2)).text();
							    let ctype = $($(this).children().get(3)).text();
							    let cdate = $($(this).children().get(4)).text();
							    let cdescription = $($(this).children().get(5)).text();
								let cbuyerName = $($(this).children().get(5)).text();
							    
							    $('#id').val(cid);
								$('#accountNo').val(caccountNo);
								$('#amount').val(camount);
								$('#type').val(ctype);
								$('#date').val(cdate);
								$('#description').val(cdescription);
								$('#buyerName').val(cbuyerName);
							    
						});
					}
				},
				error: (err) => {
					alert(err);
				}
			});
		} else {
			window.location = 'login.jsp';
		}
		});


function deleteRow(x) {
	let id = $($(x).closest("tr").children().get(0)).text();
	
	let token = $.cookie('token');
	let uname = $.cookie('uname');

	if (token !== undefined && uname !== undefined) {
		$.ajax({
			type: 'delete',
			url: 'http://localhost:8089/User/webapi/payments/payment/'+id,
			headers: {
				'Authcode': token,
				'uname': uname
			},
			contentType: 'application/json',
			success: (data) => {
				alert(data.message);
				
				location.reload();
			},
			error: (err) => {
				alert(err);
			}
		});
	} else {
		window.location = 'login.jsp';
	}

	
}
