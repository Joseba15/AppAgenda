package com.jacaranda;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Event {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private LocalDate fecha;
	private double hora;
	private boolean activo;
	private String descripcion;
	private String username;
	@ManyToOne
	@JoinColumn(name="id")
	private int userId;

	public Event() {
		// TODO Auto-generated constructor stub
	}
	
	public Event(LocalDate fecha, double hora, boolean activo, String descripcion, String username,int userId) {
		super();
		this.fecha = fecha;
		this.hora = hora;
		this.activo = activo;
		this.descripcion = descripcion;
		this.username = username;
		this.userId = userId;
	}

	public LocalDate getFecha() {
		return fecha;
	}

	public void setFecha(LocalDate fecha) {
		this.fecha = fecha;
	}

	public double getHora() {
		return hora;
	}

	public void setHora(double hora) {
		this.hora = hora;
	}

	public boolean isActivo() {
		return activo;
	}

	public void setActivo(boolean activo) {
		this.activo = activo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getId() {
		return id;
	}
	public int getUserId() {
		return id;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}

}
