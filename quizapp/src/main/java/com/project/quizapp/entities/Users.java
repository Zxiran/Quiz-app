package com.project.quizapp.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Users {
    
	String email;
	@Id
	String username;
	String password;
	boolean isEnabled;
	
	public boolean isEnabled() {
		return isEnabled;
	}
	public void setEnabled(boolean isEnabled) {
		this.isEnabled = isEnabled;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Users(String username, String password,String email ) {
		super();
		this.email = email;
		this.username = username;
		this.password = password;
	}
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
