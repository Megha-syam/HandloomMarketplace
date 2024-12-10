package com.klu.project.HFMP.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.project.HFMP.model.Artisan;
import com.klu.project.HFMP.repository.ArtisanRepository;

@Service
public class ArtisanServiceImpl implements ArtisanService {
	
	@Autowired
	private ArtisanRepository artisanrepo;
	@Override
	public Artisan checkartisanlogin(String amail, String apwd) {
		
		return artisanrepo.checkartisanlogin(amail, apwd) ;
	}

	@Override
	public String ArtisanRegistration(Artisan a) {
		artisanrepo.save(a);
		
		return "Artisan Registered Sucessfully";
	}

	@Override
	public List<Artisan> ViewAllArtisans() {
		return (List<Artisan>) artisanrepo.findAll();
	}

	
	public Artisan findById(int id) {
	    return artisanrepo.findById(id).orElse(null); // Check for artisan existence
	}


	@Override
	public void updateArtisan(Artisan artisan) {
		artisanrepo.save(artisan); 
		
	}

	@Override
	public void deleteArtisan(int id) {
		artisanrepo.deleteById(id);
		
	}

}
