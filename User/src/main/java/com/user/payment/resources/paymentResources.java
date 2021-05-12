package com.user.payment.resources;


import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;


import com.user.payment.model.payment;
import com.user.payment.repository.paymentRepository;
import com.user.standardresponse.StandardResponse;


//Resources
//Endpoints
@Path("/payments")
public class paymentResources {

	paymentRepository repo = new paymentRepository();
	StandardResponse rsp = new StandardResponse();
	
	//get all payments
	@GET	
	@Produces(MediaType.APPLICATION_JSON)
	public List<payment> getPayments() {
		return repo.getPayments();
	}
	
	//get specific payment
	@GET
	@Path("payment/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public payment getPayment(@PathParam("id") int id) {
		return repo.getPayment(id);
	}
	
	//insert payment
	@POST
	@Path("payment")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response createPayment(payment p1) {
		System.out.println(p1);
		repo.create(p1);
		rsp.setSucess(true);
		rsp.setMessage("Payment successfully inserted!");
		
		return Response.ok().entity(rsp).build();
	}
	
	//update payment
	@PUT
	@Path("payment")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response updatePayment(payment p1) {
		System.out.println(p1);
		if(repo.getPayment(p1.getId()).getId() == 0) {
			rsp.setSucess(false);
			rsp.setMessage("Payment ID not found in the database!");
			System.out.println("Payment ID not found in the database!");
			
		} else {
			System.out.println("Payment updated!");
			repo.update(p1);
			rsp.setSucess(true);
			rsp.setMessage("Payment successfully updated!");
		}
		return Response.ok().entity(rsp).build();
		
	}
	
	//delete payment
	@DELETE
	@Path("payment/{id}")
	public Response deletePayment(@PathParam("id") int id) {
		payment p = repo.getPayment(id);
		
		if(p.getId() != 0) {
			System.out.println("Payment deleted!");
			repo.delete(id);
			rsp.setSucess(true);
			rsp.setMessage("Payment successfully deleted!");
		}
		else {
			rsp.setSucess(false);
			rsp.setMessage("Payment ID not found in the database!");
			System.out.println("Payment ID not found in the database!");
		}
		return Response.ok().entity(rsp).build();
		
	}
}
