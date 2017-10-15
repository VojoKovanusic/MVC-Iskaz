package com.iskaz.app.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.iskaz.app.model.Odjel;
import com.iskaz.app.service.ServiceOdjel;

@RestController
public class Rest {
	@Autowired
	ServiceOdjel serviceOdjel;
		private static ObjectMapper maper;
		static {
			maper = new ObjectMapper();
		}
		
		
		 
		public static String convertJavaToJSON(Object obj) {
			String jsonRequest = "";

			try {
				jsonRequest = maper.writeValueAsString(obj);
			} catch (JsonGenerationException e) {

				e.printStackTrace();
			} catch (JsonMappingException e) {

				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
			return jsonRequest;
		}
		
		@GetMapping("/odjeli")
		public String listaOdjela() {
			
			ArrayList<Odjel> listaOdjela = serviceOdjel.findAll();
			
			
			ArrayList<String> json =new ArrayList<>();
			for (Odjel odjel : listaOdjela) {
				json.add(convertJavaToJSON(odjel));
			}
		 
			return json.toString();
		}
 
	}
