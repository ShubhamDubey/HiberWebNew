package com.niit.hiberwebnew;

public class Person1 {

	private Long PersonId;
	private String firstname;

	public Person1() {

	}

	public Person1(String firstname, String lastname) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
	}

	public Long getPersonId() {
		return PersonId;
	}

	public void setPersonId(Long personId) {
		PersonId = personId;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	private String lastname;

}
