package com.klu.project.HFMP.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="customer_table")
public class Customer {

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY) 
	    private Integer id;
	    private String cname;
		@Column(name="customer_mail",nullable=false,unique=true,length=30)
		private String cmail;
		private String cpwd;
		
		private String cnumber;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getCname() {
			return cname;
		}

		public void setCname(String cname) {
			this.cname = cname;
		}

		public String getCmail() {
			return cmail;
		}

		public void setCmail(String cmail) {
			this.cmail = cmail;
		}

		public String getCpwd() {
			return cpwd;
		}

		public void setCpwd(String cpwd) {
			this.cpwd = cpwd;
		}

		public String getCnumber() {
			return cnumber;
		}

		public void setCnumber(String cnumber) {
			this.cnumber = cnumber;
		}
		
		
}
