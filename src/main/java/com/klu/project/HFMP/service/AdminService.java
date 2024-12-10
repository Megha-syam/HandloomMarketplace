package com.klu.project.HFMP.service;

import java.util.List;

import com.klu.project.HFMP.model.Admin;
import com.klu.project.HFMP.model.Product;

public interface AdminService {

	public Admin checkadminlogin(String username,String pwd);
	public String AddProduct(Product product);
	   public List<Product> ViewAllProducts();
	   
}
