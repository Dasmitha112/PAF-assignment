package com.user.standardresponse;

public class StandardResponse {

	private boolean isSucess;
	private String message;
	private Object data;

	public boolean isSucess() {
		return isSucess;
	}

	public void setSucess(boolean isSucess) {
		this.isSucess = isSucess;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public StandardResponse(boolean isSucess, String message, Object data) {
		super();
		this.isSucess = isSucess;
		this.message = message;
		this.data = data;
	}

	public StandardResponse() {

	}

}
