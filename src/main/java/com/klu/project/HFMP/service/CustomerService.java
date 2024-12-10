package com.klu.project.HFMP.service;

import com.klu.project.HFMP.model.Customer;

public interface CustomerService {

	public Customer checkcustomerlogin(String cmail,String cpwd);
	public String CustomerRegistration(Customer c); 
}
