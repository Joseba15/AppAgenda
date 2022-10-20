package com.jacaranda;

import java.time.LocalDate;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Event {
	
	@Id
	private int id;
	private LocalDate fecha;
	private double hora;
	private boolean activo;
	private String descripcion;
	private String username;

	public Event() {
		// TODO Auto-generated constructor stub
	}
	
	public Event(int id, LocalDate fecha, double hora, boolean activo, String descripcion, String username) {
		this.id = id;
		this.fecha = fecha;
		this.hora = hora;
		this.activo = activo;
		this.descripcion = descripcion;
		this.username = username;
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

	@Override
	public int hashCode() {
		return Objects.hash(activo, descripcion, fecha, hora, id, username);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Event other = (Event) obj;
		return activo == other.activo && Objects.equals(descripcion, other.descripcion)
				&& Objects.equals(fecha, other.fecha)
				&& Double.doubleToLongBits(hora) == Double.doubleToLongBits(other.hora) && id == other.id
				&& Objects.equals(username, other.username);
	}
	
}
