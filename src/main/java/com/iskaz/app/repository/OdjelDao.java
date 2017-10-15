package com.iskaz.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.iskaz.app.model.Odjel;

@Repository
public interface OdjelDao  extends JpaRepository<Odjel, Integer>{

}
