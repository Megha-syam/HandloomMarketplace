package com.klu.project.HFMP.service;

import java.util.List;

import com.klu.project.HFMP.model.Artisan;

public interface ArtisanService {

	public Artisan checkartisanlogin(String amail,String apwd);
	public String ArtisanRegistration(Artisan a);
	public List<Artisan> ViewAllArtisans();
	public Artisan findById(int id);         // Find an artisan by ID
    public void updateArtisan(Artisan artisan); // Update an artisan's details
    public void deleteArtisan(int id);  
}
