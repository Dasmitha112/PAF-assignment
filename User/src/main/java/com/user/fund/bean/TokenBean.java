package com.user.fund.bean;

public class TokenBean {

	boolean valid;
	String name;

	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public TokenBean(boolean valid, String name) {
		super();
		this.valid = valid;
		this.name = name;
	}

	public TokenBean() {

	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "isValid: "+this.valid+", Name: "+this.name;
	}
	
	

}
