package com.klu.project.HFMP.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klu.project.HFMP.model.Artisan;


@Repository
public interface ArtisanRepository extends JpaRepository<Artisan, Integer>{

	@Query("select a from Artisan a where a.amail=?1  and    a.apwd=?2")
	public Artisan checkartisanlogin(String amail,String apwd);
}
