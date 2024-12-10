package com.klu.project.HFMP.service;

import java.util.List;

import com.klu.project.HFMP.model.Product;

public interface ProductService {

	public String AddProduct(Product product);
	   public List<Product> ViewAllProducts();
	   String updateProduct(Product product);

	    String deleteProduct(int pid);
}
