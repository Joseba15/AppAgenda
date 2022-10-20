package com.jacaranda;

import java.time.LocalDate;
import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.mapping.List;

public class CRUDSession {
	
	private StandardServiceRegistry sr;
	private SessionFactory sf;
	private Session session;

	public CRUDSession() {
		sr = new StandardServiceRegistryBuilder().configure().build();
		sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		session = sf.openSession();
	}
	
	//METODOS CONEXION BASE DE DATOS PARA USUARIO
	
	public void saveUser(String username, String password) {
		User usuario = new User(username,password);
		session.getTransaction().begin();
		session.save(usuario);
		session.getTransaction().commit();
	}
	
	//OBTENER UN USUARIO CONCRETO SEGUN SU USERNAME
	
	public User getUser(String username) {
		User usuario;
		User res = null;
		int id = 1;
		do {
			usuario = session.get(User.class, id);
			if (usuario.getUsername().equals(username)) {
				res = usuario;
			}
			id++;
		}while(usuario != null);
		return res;
	}
	
	//OBTENER TODOS LOS USUARIOS DE LA TABLA USER
	
	public ArrayList<User> getAllUser(){
		ArrayList<User> listaUsuarios = new ArrayList<>();
		User usuario;
		int id = 1;
		do {
			usuario = session.get(User.class, id);
			if (usuario != null) {
				listaUsuarios.add(usuario);
			}
			id++;
		}while(usuario != null);
		return listaUsuarios;
	}
	
	public void updateUser(int id, String newpassword) {
		User usuario = (User) session.get(User.class, id);
		usuario.setPassword(newpassword);
		session.getTransaction().begin();
		session.update(usuario);
		session.getTransaction().commit();
	}
	
	public void deleteUser(int id) {
		User usuario = (User) session.get(User.class, id);
		session.getTransaction().begin();
		session.delete(usuario);
		session.getTransaction().commit();
	}
	
	//METODOS CONEXION BASE DE DATOS PARA EVENTOS
	
	
	public void saveEvento(int id, LocalDate fecha, double hora, boolean activo, String descripcion, String username,int userId) {
		Event evento = new Event(fecha, hora, activo, descripcion, username,userId);
		session.getTransaction().begin();
		session.save(evento);
		session.getTransaction().commit();
	}
	
	//OBTENER UN UNICO EVENTO SIN IMPORTAR EL USER
	
	public Event getEvent(int id) {
		Event evento = (Event) session.get(Event.class, id);
		return evento;
	}
	
	//OBTENER TODOS LOS EVENTOS DE UN USUARIO DADO EL ID DEL USER
	
	public ArrayList<Event> getEventsUser(int id){
		User usuario = session.get(User.class, id);
		Event evento;
		ArrayList<Event> listaEventos = new ArrayList<>();
		do {
			evento = session.get(Event.class, id);
			if (evento.getUsername().equals(usuario.getUsername())) {
				listaEventos.add(evento);
			}
			id++;
		}while(evento != null);
		return listaEventos;
	}
	
	public void updateEvent(int id, LocalDate fecha, double hora, boolean activo, String descripcion, String username) {
		Event evento = (Event) session.get(Event.class, id);
		evento.setFecha(fecha);
		evento.setHora(hora);
		evento.setActivo(activo);
		evento.setDescripcion(descripcion);
		evento.setUsername(username);
		session.getTransaction().begin();
		session.update(evento);
		session.getTransaction().commit();
	}
	
	public void deleteEvent(int id) {
		Event evento = (Event) session.get(Event.class, id);
		session.getTransaction().begin();
		session.delete(evento);
		session.getTransaction().commit();
	}

}
