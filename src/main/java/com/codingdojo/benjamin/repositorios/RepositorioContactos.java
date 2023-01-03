package com.codingdojo.benjamin.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.benjamin.modelos.Contacto;

@Repository
public interface RepositorioContactos extends CrudRepository<Contacto, Long> {

	List<Contacto> findAll();
}
