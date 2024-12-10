package com.klu.project.HFMP.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.project.HFMP.model.Customer;
import com.klu.project.HFMP.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerRepository customerrepo;
	@Override
	public Customer checkcustomerlogin(String cmail, String cpwd) {
	
		return customerrepo.checkcustomerlogin(cmail, cpwd);
	}

	@Override
	public String CustomerRegistration(Customer c) {
		customerrepo.save(c);
		return "Customer Registered Successfully";
	}

}
