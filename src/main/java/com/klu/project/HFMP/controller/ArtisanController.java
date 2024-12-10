package com.klu.project.HFMP.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.klu.project.HFMP.model.Artisan;
import com.klu.project.HFMP.service.ArtisanService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ArtisanController {


	@Autowired
	private ArtisanService artisanservice;
	
	@PostMapping("checkartisanlogin")
	public ModelAndView checkartisanlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String email = request.getParameter("amail");
		String pwd = request.getParameter("apwd");
		
		
		 Artisan a = artisanservice.checkartisanlogin(email, pwd);
		if(a!=null)
		{
			
			mv.setViewName("artisans");
		}
		else
		{
//			return "Fail";
			mv.setViewName("artisanlogin");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
	
	@GetMapping("artisansignup")
	public ModelAndView artisansignup()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("artisansignup");
		return mv;
	}
	
	@GetMapping("artisandashboard")
	public ModelAndView artisandashboard()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("artisans");
		return mv;
	}
	
	@GetMapping("artisanlogin")
	public ModelAndView artisanlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("artisanlogin");
		return mv;
	}
	
	
	@PostMapping("insertartisan1")
	   public ModelAndView insertcustomer(HttpServletRequest request)
	   {
	      String aname = request.getParameter("aname");
	 
	    String amail = request.getParameter("amail");
	    String apwd = request.getParameter("apwd");
	    String anumber = request.getParameter("anumber");
	    
	      Artisan a =new Artisan();
	      
	     a.setAname(aname);
	     a.setAmail(amail);
	     a.setApwd(apwd);
	     a.setAnumber(anumber);
	     
	      artisanservice.ArtisanRegistration(a);
	      
	      ModelAndView mv = new ModelAndView("artisanlogin");
	    
	    
	      return mv;

	   }
	
	@GetMapping("/addartisan")
	public ModelAndView addartisan()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addartisan");
		return mv;
	}
	@RequestMapping(value = "/updateartisan", method = RequestMethod.POST)
	public ModelAndView updateArtisan(@RequestBody Artisan artisan) {
	    // Search for the artisan by ID to check if they exist
	    Artisan existingArtisan = artisanservice.findById(artisan.getId());
	    
	    ModelAndView mv = new ModelAndView();
	    
	    // If artisan exists, update their details
	    if (existingArtisan != null) {
	        existingArtisan.setAname(artisan.getAname()); // Update name
	        existingArtisan.setAmail(artisan.getAmail()); // Update email
	        existingArtisan.setAnumber(artisan.getAnumber()); // Update phone number
	        existingArtisan.setApwd(artisan.getApwd()); // Update password

	        // Call service to update artisan in the database
	        artisanservice.updateArtisan(existingArtisan);

	        // Redirect to the view that shows all artisans after successful update
	        mv.setViewName("redirect:/viewallartisans"); 
	    } else {
	        // If artisan doesn't exist, return an error view with a message
	        mv.setViewName("error");
	        mv.addObject("message", "Artisan not found!");
	    }
	    
	    return mv;
	}

	@RequestMapping(value = "/deleteartisan", method = RequestMethod.POST)
	public ModelAndView deleteArtisan(@RequestBody Map<String, Integer> request) {
	    // Get artisan ID from the request
	    int id = request.get("id");
	    
	    // Delete the artisan by ID
	    Artisan artisan = artisanservice.findById(id);
	    
	    ModelAndView mv = new ModelAndView();
	    
	    // Check if artisan exists before deletion
	    if (artisan != null) {
	        artisanservice.deleteArtisan(id); // Delete artisan from DB
	        mv.setViewName("redirect:/viewallartisans"); // Redirect to the list of artisans
	        mv.addObject("message", "Artisan deleted successfully!");
	    } else {
	        mv.setViewName("error"); // Return error view if artisan not found
	        mv.addObject("message", "Artisan not found!");
	    }
	    
	    return mv;
	}



	
	
	
}
