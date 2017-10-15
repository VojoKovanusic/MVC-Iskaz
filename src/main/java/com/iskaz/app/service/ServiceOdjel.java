package com.iskaz.app.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iskaz.app.model.Odjel;
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

	public void snimiOdjel(Odjel odjel) {
		odjeliDao.save(odjel);
		
	}
}
