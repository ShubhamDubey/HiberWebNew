package com.niit.hiberwebnew;

public class Emp {
	private int id;
	private String name;
	private Address address; // has-a relationship (Components)

	public Emp() {
		super();
	}

	public Emp(String name, Address address) {
		super();
		this.name = name;
		this.address = address;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

}
