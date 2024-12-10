package com.klu.project.HFMP.model;
import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "product_table")
public class Product 
{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name="product_id")
  private int pid;
  
  @Column(name="product_name",nullable = false,length = 100)
  private String pname;
  
  @Column(name="product_desc",nullable = false,length = 500)
  private String pdescription;
  
  @Column(name="product_cost",nullable = false)
  private double pcost;

  @Column(name="product_image",nullable = false)
  private Blob image; // blob - binary large object

public int getPid() {
	return pid;
}

public void setPid(int pid) {
	this.pid = pid;
}

public String getPname() {
	return pname;
}

public void setPname(String pname) {
	this.pname = pname;
}

public String getPdescription() {
	return pdescription;
}

public void setPdescription(String pdescription) {
	this.pdescription = pdescription;
}

public double getPcost() {
	return pcost;
}

public void setPcost(double pcost) {
	this.pcost = pcost;
}

public Blob getImage() {
	return image;
}

public void setImage(Blob image) {
	this.image = image;
}
  
  
  
  
  
  
  
}