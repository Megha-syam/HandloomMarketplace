package com.klu.project.HFMP.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klu.project.HFMP.model.Customer;


@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {

	@Query("select c from Customer c where c.cmail=?1 and  c.cpwd=?2")
	public Customer checkcustomerlogin(String cmail,String cpwd);
}