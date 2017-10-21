package com.iskaz.app.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import com.iskaz.app.model.Doznaka;
import com.iskaz.app.model.Njega;
import com.iskaz.app.model.Odjel;
import com.iskaz.app.model.Odsjek;
import com.iskaz.app.model.Proreda;
import com.iskaz.app.model.Redovna;
import com.iskaz.app.model.Stete;
import com.iskaz.app.model.Uzici;
import com.iskaz.app.model.Vrsta;
import com.iskaz.app.repository.OdjelDao;


@Transactional
@Service
public class ServiceOdjel {

	@Autowired
	OdjelDao odjeliDao;

	public ArrayList<Odjel> findAll() {
		return (ArrayList<Odjel>) odjeliDao.findAll();
	}

	public Odjel getOdjelById(int id) {
		 
		return odjeliDao.findOne(id);
	}


	public ModelAndView snimiSve(Njega njega,Odjel odjel, Odsjek odsjek, Vrsta vrsta, Doznaka doznaka, Redovna redovna, Stete steta,Uzici uzici,Proreda proreda) {
		ModelAndView model = new ModelAndView("lista-odjela");
		 vrsta.setRedovna(redovna);
		 vrsta.setProreda(proreda);
		 steta.setNetoStete(steta.getOgrevStete()+steta.getTehnikaStete());
		 vrsta.setSteta(steta);
		vrsta.setUzici(uzici);
		vrsta.setProreda(proreda);
		vrsta.setDoznaka(doznaka);
		vrsta.setNjega(njega);
		odsjek.getListaVrsta().add(vrsta);
		odjel.getListaOdsjeka().add(odsjek);
		odjeliDao.save(odjel) ; 
		return model;
	}

	public void snimiNjegu(Njega njega) {
		 Vrsta vrsta=getPoslednjuVrstu();
		 
	}

	private Vrsta getPoslednjuVrstu() {
int lastOdjel=odjeliDao.findAll().size();
int lastOdsjek=odjeliDao.findOne(lastOdjel).getListaOdsjeka().size();
 
return null;
	}
}
