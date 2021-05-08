package com.user.fund.service;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.MediaType;

import org.jvnet.hk2.annotations.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.user.fund.bean.TokenBean;
@Service
public class TokenVerificationService {
	
	public boolean getTokenVerificaton(String token,String name) {
		Client client = ClientBuilder.newClient();
		String data =  client.target("http://localhost:8081/User/webapi/account/ver/"+token+"/"+name)
		.request(MediaType.APPLICATION_JSON)
		.get(String.class);
		try {
			JsonNode b = new ObjectMapper().readTree(data);
			return b.get("isValid").asBoolean();
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
