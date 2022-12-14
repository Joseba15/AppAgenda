package com.jacaranda;

import java.time.LocalDate;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name="evento")
public class Event {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private LocalDate fecha;
	private double hora;
	private boolean activo;
	private String descripcion;
	@ManyToOne
	@JoinColumn(name="userId")
	private User userId;

	public Event() {
		// TODO Auto-generated constructor stub
	}
	
	public Event(LocalDate fecha, double hora, boolean activo, String descripcion,User userId) {
		super();
		this.fecha = fecha;
		this.hora = hora;
		this.activo = activo;
		this.descripcion = descripcion;
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

	public int getId() {
		return id;
	}
	public User getUserId() {
		return userId;
	}
	public void setUserId(User userId) {
		this.userId = userId;
	}

	@Override
	public int hashCode() {
		return Objects.hash(activo, descripcion, fecha, hora, id, userId);
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
				&& Objects.equals(userId, other.userId);
	}

}
