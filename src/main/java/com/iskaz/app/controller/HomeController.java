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

import com.iskaz.app.model.Doznaka;
import com.iskaz.app.model.Njega;
import com.iskaz.app.model.Odjel;
import com.iskaz.app.model.Odsjek;
import com.iskaz.app.model.Proreda;
import com.iskaz.app.model.Redovna;
import com.iskaz.app.model.Uzici;
import com.iskaz.app.model.Vanredne_i_stete;
import com.iskaz.app.model.Vrsta;
import com.iskaz.app.service.ServiceOdjel;

@Controller
public class HomeController {
	@Autowired
	ServiceOdjel serviceOdjel;

	@RequestMapping(path = "/index", method = RequestMethod.GET)
	public String goHome() {
		return "lista-odjela";
	}

	@RequestMapping(value = "/home/page", method = RequestMethod.GET)
	public ModelAndView tabela() {

		ModelAndView model = new ModelAndView("add-odjel-form");

		return model;

	}

	@RequestMapping(value = "/add/odjel", method = RequestMethod.POST)
	public ModelAndView saveCustomer(

			@ModelAttribute("odjel") Odjel odjel, @ModelAttribute("odsjek") Odsjek odsjek,
			@ModelAttribute("vrsta") Vrsta vrsta, @ModelAttribute("doznaka") Doznaka doznaka
	/*
	 * ,@ModelAttribute("redovna") Redovna redovna,
	 * 
	 * @ModelAttribute("uzici") Uzici uzici
	 * 
	 * @,ModelAttribute("njega")Njega njega,
	 * 
	 * @ModelAttribute("proreda")Proreda proreda,
	 * 
	 * @ModelAttribute("vanredne")Vanredne_i_stete vanredne
	 */
	) {

		ModelAndView model = new ModelAndView("lista-odjela");
		// vrsta.setRedovna(redovna);
		// vrsta.setUzici(uzici);
		vrsta.setDoznaka(doznaka);
		odsjek.getListaVrsta().add(vrsta);
		odjel.getListaOdsjeka().add(odsjek);
		serviceOdjel.snimiOdjel(odjel);
		return model;

	}

}