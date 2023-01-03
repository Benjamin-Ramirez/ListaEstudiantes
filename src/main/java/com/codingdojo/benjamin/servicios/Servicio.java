package com.codingdojo.benjamin.servicios;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.benjamin.modelos.Contacto;
import com.codingdojo.benjamin.modelos.Estudiante;
import com.codingdojo.benjamin.repositorios.RepositorioContactos;
import com.codingdojo.benjamin.repositorios.RepositorioEstudiantes;

@Service
public class Servicio {

	
	private final  RepositorioEstudiantes repositorio_estudiantes;
	private final RepositorioContactos repositorio_contactos;
	
	public Servicio(RepositorioEstudiantes repositorio_estudiantes, RepositorioContactos repositorio_contactos) {
		this.repositorio_estudiantes = repositorio_estudiantes;
		this.repositorio_contactos = repositorio_contactos;
	}
	
	
	
	
	
	// --------------- ESTUDIANTE ---------------------
	
	
	public List<Estudiante> find_student(){
		return repositorio_estudiantes.findAll();
	}
	public List<Estudiante> find_studentId(){
		return repositorio_estudiantes.findByContactoIdIsNull();
	}
	public Estudiante save_student(Estudiante estudiante) {
		return repositorio_estudiantes.save(estudiante);
	}
	
	// ------------------- CONTACTO -----------------
	
	public List<Contacto> find_contact(){
		return repositorio_contactos.findAll();
	}
	public Contacto save_contact(Contacto contacto) {
		return repositorio_contactos.save(contacto);
	}
	
	
}
