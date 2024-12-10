package com.klu.project.HFMP.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.klu.project.HFMP.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {


}
