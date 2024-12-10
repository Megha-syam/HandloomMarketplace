package com.klu.project.HFMP.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.project.HFMP.model.Product;
import com.klu.project.HFMP.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductRepository productrepo;
	
	@Override
	public String AddProduct(Product product) 
	{
		productrepo.save(product);
		return "Product Added Successfully";
	}

	@Override
	public List<Product> ViewAllProducts() 
	{
		return  productrepo.findAll();
	}

	@Override
	public String updateProduct(Product product) {
		if (productrepo.existsById(product.getPid())) {
            productrepo.save(product); // Save updated product
            return "Product updated successfully!";
        }
        return "Product not found!";
	}

	@Override
	public String deleteProduct(int pid) {
		if (productrepo.existsById(pid)) {
            productrepo.deleteById(pid); // Delete product by ID
            return "Product deleted successfully!";
        }
        return "Product not found!";
	}

}
