/**
 * 
 */
package com.app;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

/**
 * @author Fatih Totrakanlı
 *
 */

@Entity							//Proje oluşturulurken Üyeler için JPA ile standart entity modeli oluşturulmuştur.
public class User {				//Projede H2 DB kullanılmıştır. H2 db bir memory db olduğu için sunucu durdurulduğunda veriler gidecektir.

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	@NotNull
	private String firstname;
	private String lastname;
	private String adress;
	private String department;
	private long mobilenumber;
	
	
	public long getUserId() {
		return id;
	}
	public void setUserId(long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstname;
	}
	public void setFirstName(String name) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String surname) {
		this.lastname = lastname;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public long getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(long id) {
		this.mobilenumber = mobilenumber;
	}
	public User() {
		super();
	}
	public User( String firstname, String lastname, String adress, String department, long mobilenumber) {
		super();
		
		this.firstname = firstname;
		this.lastname = lastname;
		this.adress = adress;
		this.department = department;
		this.mobilenumber = mobilenumber;
	}
	
	
}
