package it.dedo.testmaven.persistence.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class AllievoEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	private int id;
	private String nome;
	private String cognome;
	private String sesso;
	private Date nascita;
	private String telefono;
	private String email;
	private int idTipoCertificato;
	private Date dataScadenzaCertificato;
	private String Note;
	
	@Id
	@Column(name="ALL_ID")
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name="ALL_NOME")
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	@Column(name="ALL_COGNOME")
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	@Column(name="ALL_SESSO")
	public String getSesso() {
		return sesso;
	}
	public void setSesso(String sesso) {
		this.sesso = sesso;
	}
	
	@Column(name="ALL_DATA_NASCITA")
	public Date getNascita() {
		return nascita;
	}
	public void setNascita(Date nascita) {
		this.nascita = nascita;
	}
	
	@Column(name="ALL_TELEFONO")
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	
	@Column(name="ALL_EMAIL")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name="ALL_ID_TIPO_CERTIFICATO")
	public int getIdTipoCertificato() {
		return idTipoCertificato;
	}
	public void setIdTipoCertificato(int idTipoCertificato) {
		this.idTipoCertificato = idTipoCertificato;
	}
	
	@Column(name="ALL_DATA_SCADENZA_CERTIFICATO")
	public Date getDataScadenzaCertificato() {
		return dataScadenzaCertificato;
	}
	public void setDataScadenzaCertificato(Date dataScadenzaCertificato) {
		this.dataScadenzaCertificato = dataScadenzaCertificato;
	}
	
	@Column(name="ALL_NOTE")
	public String getNote() {
		return Note;
	}
	public void setNote(String note) {
		Note = note;
	}
	
}
