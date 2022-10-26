package com.jacaranda;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name = "usuario")
public class User {
	
	@Id
	private int userId;
	@Column(name="nombreUsuario")
	private String username;
	@Column(name="contrasena")
	private String password;
	@OneToMany(mappedBy ="userId", cascade = CascadeType.ALL,
			orphanRemoval = true)
	private List<Event> events;

	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public User(String username, String password) {
		this.username = username;
		this.password = password;
		this.events = new ArrayList<Event>();
	}
	
	public int getId() {
		return userId;
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

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public List<Event> getEvents() {
		return events;
	}

	public void setEvents(List<Event> events) {
		this.events = events;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
