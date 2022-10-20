package com.jacaranda;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
	
	@Id
	private int id;
	private String username;
	private String password;

	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public User(String username, String password) {
		this.username = username;
		this.password = password;
	}
	
	public int getId() {
		return id;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, password, username);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		return id == other.id && Objects.equals(password, other.password) && Objects.equals(username, other.username);
	}

}
