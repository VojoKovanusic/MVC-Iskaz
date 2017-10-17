package com.iskaz.app.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Doznaka {
	@Id@GeneratedValue
	private int idDoznaka;
	int bruto, ogrev, tehnika;
	int neto = this.tehnika + this.ogrev;
	private double procenat = ((double) this.neto / (double) bruto) * 100;
 
	public int getBruto() {
		return bruto;
	}

	public void setBruto(int bruto) {
		this.bruto = (int) (procenat/neto);
	}

	public int getNeto() {
		return neto;
	}

	public void setNeto(int neto) {
		this.neto = tehnika+ogrev;
	}

	public int getOgrev() {
		return ogrev;
	}

	public void setOgrev(int ogrev) {
		this.ogrev = ogrev;
	}

	public int getTehnika() {
		return tehnika;
	}

	public void setTehnika(int tehnika) {
		this.tehnika = tehnika;
	}

	public double getProcenat() {
		return procenat;
	}

	public void setProcenat(int procenat) {
		this.procenat = procenat;
	}

	@Override
	public String toString() {
		return "[bruto=" + bruto + ", neto=" + neto + ", ogrev=" + ogrev
				+ ", tehnika=" + tehnika + ", iskoristenje: " + (int) procenat
				+ " %]";
	}

	
	public void rekapitulacijaDoznakePoVrstamaIsjeci(Doznaka doznaka) {
		this.bruto += doznaka.getBruto();
		this.ogrev += doznaka.getOgrev();
		this.tehnika += doznaka.getTehnika();
		neto = this.tehnika + this.ogrev;
		this.procenat = ((double) this.neto / (double) bruto) * 100;

	}
}
