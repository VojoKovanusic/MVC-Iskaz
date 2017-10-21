package com.iskaz.app.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.iskaz.app.model.Doznaka;
import com.iskaz.app.model.Njega;
import com.iskaz.app.model.Odjel;
import com.iskaz.app.model.Odsjek;
import com.iskaz.app.model.Redovna;
import com.iskaz.app.model.Sjeca;
import com.iskaz.app.model.Vrsta;
import com.iskaz.app.service.ServiceOdjel;

@Controller
public class RedovnaController {
	@Autowired
	ServiceOdjel serviceOdjel;

	@RequestMapping(value = "/redovna", method = RequestMethod.GET)
	public ModelAndView tabela() {

		ModelAndView model = new ModelAndView("add-redovne-form");

		return model;

	}

	@RequestMapping(value = "/add/redovna", method = RequestMethod.POST)
	public ModelAndView saveCustomer(
		/*	@RequestParam("brojOdjelam") int brOdjela,
			@RequestParam("brOdsjeka") int brOdsjeka,
			@RequestParam("vrsta") String vrsta,*/
			@ModelAttribute("redovna") Njega njega) {
		ModelAndView model = new ModelAndView("lista-redovna");
		
		serviceOdjel.snimiNjegu(njega);
		return model;

	}

}
