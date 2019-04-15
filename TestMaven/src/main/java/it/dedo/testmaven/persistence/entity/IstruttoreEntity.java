package it.dedo.testmaven.persistence.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class IstruttoreEntity implements Serializable {
	private static final long serialVersionUID = 2317376367950052659L;
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	private int id;
	private String nome;
	private String cognome;
	private String telefono;
	private String email;
	
	@Id
	@Column(name="ISTR_ID")
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name="ISTR_NOME")
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	@Column(name="ISTR_COGNOME")
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	
	@Column(name="ISTR_TELEFONO")
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	
	@Column(name="ISTR_EMAIL")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
