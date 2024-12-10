package com.klu.project.HFMP;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class MyController {
	
	
	@GetMapping("/")
	public String home() {
		return "index";
	}
	@GetMapping("/contact")
	public String contact() {
		return "contactus";
	}
//	@GetMapping("/customerlogin")
//	public String customerlogin() {
//		return "customerlogin";
//	}
//	
//	@GetMapping("/artisanlogin")
//	public String artisanlogin() {
//		return "artisanlogin";
//	}
//	
//	@GetMapping("/customersignup")
//	public String customersignup() {
//		return "customersignup";
//	}
	
//	@GetMapping("/artisansignup")
//	public String artistansignup() {
//		return "artisansignup";
//	}
	
	@GetMapping("/admin")
	public String admin() {
		return "admin";
	}

//	@GetMapping("/artisans")
//	public String artisans() {
//		return "artisans";
//	}
//	

	
//	  @PostMapping("/insert")
//	    public String signupUser(@ModelAttribute("suname") String suname,
//	                             @ModelAttribute("sumail") String sumail,
//	                             @ModelAttribute("spwd") String spwd,
//	                             @ModelAttribute("sact") String sact,
//	                             Model model) {
//	        
//	        // Create a new User object and set its properties
//	        User newUser = new User();
//	        newUser.setSuname(suname);
//	        newUser.setSumail(sumail);
//	        newUser.setSpwd(spwd);
//	        newUser.setSact(sact);
//
//	        try {
//	            // Call DAO method to save the user in the database
//	            hdao.signup(newUser);
//
//	            // Add success message to the model
//	            model.addAttribute("success", "Signup successful! Please log in.");
//	            return "login";  // Redirect to login page
//	        } catch (Exception e) {
//	            // Add error message to the model in case of failure
//	            model.addAttribute("error", "An error occurred during signup. Please try again.");
//	            return "signup";  // Stay on the signup page in case of error
//	        }
//	    }
//	
}
