package com.klu.project.HFMP.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.project.HFMP.model.Admin;
import com.klu.project.HFMP.model.Product;
import com.klu.project.HFMP.repository.AdminRepository;
import com.klu.project.HFMP.repository.ProductRepository;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminRepository adminRepo;
	
	@Autowired
    private ProductRepository productRepo;
	@Override
	public Admin checkadminlogin(String username, String pwd) {
		return adminRepo.checkadminlogin(username, pwd);
	}
	public String AddProduct(Product product) 
	{
		productRepo.save(product);
		return "Product Added Successfully";
	}

	@Override
	public List<Product> ViewAllProducts() 
	{
		return (List<Product>) productRepo.findAll();
	}

}
