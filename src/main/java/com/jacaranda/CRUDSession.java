package com.jacaranda;

import java.time.LocalDate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

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
	
	public User getUser(String username) {
		User usuario = (User) session.get(User.class,username);
		return usuario;
	}
	
	public void updateUser(String username, String newpassword) {
		User usuario = (User) session.get(User.class, username);
		usuario.setPassword(newpassword);
		session.getTransaction().begin();
		session.update(usuario);
		session.getTransaction().commit();
	}
	
	public void deleteUser(String username) {
		User usuario = (User) session.get(User.class, username);
		session.getTransaction().begin();
		session.delete(usuario);
		session.getTransaction().commit();
	}
	
	//METODOS CONEXION BASE DE DATOS PARA EVENTOS
	
	
	public void saveEvento(int id, LocalDate fecha, double hora, boolean activo, String descipcion, String username) {
		Event evento = new Event();
		session.getTransaction().begin();
		session.save(evento);
		session.getTransaction().commit();
	}

}
