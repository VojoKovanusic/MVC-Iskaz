package com.iskaz.app.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Uzici extends Sjeca implements Serializable{
 
 
	/**
	 * 
	 */
	private static final long serialVersionUID = -7193200131352868032L;

	public Uzici() {
		super();
	 
	}

	public Uzici(int bruto, int ogrev, int tehnika) {
		super(bruto, ogrev, tehnika);
	 
	}

	@Override
	public String toString() {
		return "[bruto:" + getBruto() + " ogrev:" + getOgrev() + " tehnika"
				+ getTehnika() + "]";
	}
}

