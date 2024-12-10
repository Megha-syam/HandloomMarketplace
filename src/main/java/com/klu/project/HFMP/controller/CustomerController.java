package com.klu.project.HFMP.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.project.HFMP.model.Customer;
import com.klu.project.HFMP.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerservice;
	
	@PostMapping("checkcustomerlogin")
	public ModelAndView checkcustomerlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String email = request.getParameter("cmail");
		String pwd = request.getParameter("cpwd");
		
		
		Customer c = customerservice.checkcustomerlogin(email, pwd);
		if(c!=null)
		{
			
			mv.setViewName("customersdashboard");
		}
		else
		{
//			return "Fail";
			mv.setViewName("customerlogin");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
	
	@GetMapping("customersignup")
	public ModelAndView customersignup()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customersignup");
		return mv;
	}
	
	@GetMapping("customersdashboard")
	public ModelAndView customersdashboard()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customersdashboard");
		return mv;
	}
	
	@GetMapping("customerlogin")
	public ModelAndView customerlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerlogin");
		return mv;
	}
	
	
	@PostMapping("insertcustomer")
	   public ModelAndView insertcustomer(HttpServletRequest request)
	   {
	      String cname = request.getParameter("cname");
	 
	    String cmail = request.getParameter("cmail");
	    String cpwd = request.getParameter("cpwd");
	    String cnumber = request.getParameter("cnumber");
	    
	    
	     
	      
	      
	      Customer c =new Customer();
	      
	      c.setCname(cname);
	      c.setCmail(cmail);
	      c.setCpwd(cpwd);
	      c.setCnumber(cnumber);
	      
	      
	       customerservice.CustomerRegistration(c);
	      
	      ModelAndView mv = new ModelAndView("customerlogin");
	    
	    
	      return mv;

	   }
	
	
	

}
