package com.iskaz.app.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.iskaz.app.model.Odjel;
import com.iskaz.app.model.Odsjek;
import com.iskaz.app.service.ServiceOdjel;

@Controller
public class HomeController {
	@Autowired
	ServiceOdjel serviceOdjel;

	@RequestMapping(path = "/index", method = RequestMethod.GET)
	public String goHome() {
		return "lista-odjela";
	}

	@GetMapping("/home")
	public String tabela() {

		return "lista-odjela";
	}

	// za validaciju
	@RequestMapping(value = "/add/odjel")
	// @PostMapping("/add/odjel")
	public String saveCustomer(@ModelAttribute("odjel") @Valid Odjel odjel, BindingResult binding) {
		if (binding.hasErrors()) {
			return "add-odjel";
		} else {
			serviceOdjel.snimiOdjel(odjel);
	 
			return "redirect:/home";
		}
	}

}