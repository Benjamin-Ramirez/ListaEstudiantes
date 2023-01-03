package com.codingdojo.benjamin.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.benjamin.modelos.Estudiante;

@Repository
public interface RepositorioEstudiantes extends CrudRepository<Estudiante, Long> {
	
	List<Estudiante> findAll();
	List<Estudiante> findByContactoIdIsNull();

}
