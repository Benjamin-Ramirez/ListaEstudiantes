package com.codingdojo.benjamin.controladores;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.benjamin.modelos.Contacto;
import com.codingdojo.benjamin.modelos.Estudiante;
import com.codingdojo.benjamin.servicios.Servicio;

@Controller
public class AppController {
	
	@Autowired
	private Servicio servicio;
	
	@GetMapping("/students/new")
	public String student(@ModelAttribute("estudiante") Estudiante estudiante) {
		return "student.jsp";
	}
	@GetMapping("/contacts/new")
	public String contact(@ModelAttribute("contacto") Contacto contacto, Model model) {
		
		List<Estudiante> estudiante = servicio.find_studentId();
		model.addAttribute("estudiante", estudiante);
		return "contact.jsp";
	}
	@GetMapping("/students")
	public String all_student(Model model) {
		
		List<Estudiante> estudiante = servicio.find_student();
		
		model.addAttribute("estudiante", estudiante);
		return "allStudents.jsp";
	}
	
	
	
	@PostMapping("/create/student")
	public String create_student(@Valid @ModelAttribute("estudiante") Estudiante estudiante, BindingResult result) {
		
		if(result.hasErrors()) {
			return "student.jsp";
		}
		else {
			servicio.save_student(estudiante);
			return "redirect:/contacts/new";
		}
		
	}
	@PostMapping("/create/contact")
	public String create_contact(@Valid @ModelAttribute("contacto") Contacto contacto, BindingResult result) {
		
		if(result.hasErrors()) {
			return "contact.jsp";
		}
		else {
			servicio.save_contact(contacto);
			return "redirect:/students";
		}
		
	}
	
	
	
	
	

}
