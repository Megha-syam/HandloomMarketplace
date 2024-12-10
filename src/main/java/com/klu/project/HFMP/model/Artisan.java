package com.klu.project.HFMP.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="artisan_table")
public class Artisan {

	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY) // or AUTO, SEQUENCE, etc.
	    private Integer id;
	    private String aname;
		@Column(name="artisan_mail",nullable=false,unique=true,length=30)
		private String amail;
		private String apwd;
		
		private String anumber;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getAname() {
			return aname;
		}

		public void setAname(String aname) {
			this.aname = aname;
		}

		public String getAmail() {
			return amail;
		}

		public void setAmail(String amail) {
			this.amail = amail;
		}

		public String getApwd() {
			return apwd;
		}

		public void setApwd(String apwd) {
			this.apwd = apwd;
		}

		public String getAnumber() {
			return anumber;
		}

		public void setAnumber(String anumber) {
			this.anumber = anumber;
		}
		
		
}
