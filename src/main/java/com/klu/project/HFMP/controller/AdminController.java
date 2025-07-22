package com.klu.project.HFMP.controller;

import java.util.List;
import java.sql.Blob;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klu.project.HFMP.model.Admin;
import com.klu.project.HFMP.model.Artisan;
import com.klu.project.HFMP.model.Product;
import com.klu.project.HFMP.service.AdminService;
import com.klu.project.HFMP.service.ArtisanService;
import com.klu.project.HFMP.service.ProductService;

import jakarta.servlet.http.HttpServletRequest;


// Base URL for admin operations
@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;
    @Autowired
    private ArtisanService artisanService;
    @Autowired
    private ProductService productService; // Injecting ProductService

    // Admin Login Page
    @GetMapping("/adminlogin")
    public ModelAndView adminLogin() {
        return new ModelAndView("adminlogin");
    }

    // Admin Login Validation
    @PostMapping("/checkadminlogin")
    public ModelAndView checkAdminLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");

        Admin admin = adminService.checkadminlogin(auname, apwd);
        if (admin != null) {
            mv.setViewName("admin");
        } else {
            mv.setViewName("adminloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    // Add Product Page
    @GetMapping("/addproduct")
    public ModelAndView addProduct() {
        return new ModelAndView("addproduct");
    }
    @GetMapping("/addnewartisan")
    public ModelAndView addArtisan() {
        return new ModelAndView("addnewartisan");
    }
    
    // View All Products
    @GetMapping("/viewallproducts")
    public ModelAndView viewAllProducts() {
        List<Product> productList = productService.ViewAllProducts();
        ModelAndView mv = new ModelAndView("viewallproducts");
        mv.addObject("productList", productList);
        return mv;
    }
    @PostMapping("/insertartisan")
    public ModelAndView insertArtisan(
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("phone") String phone,
            @RequestParam("password") String password,
            Model model) {

        // Create a new Artisan object and populate it with form data
        Artisan artisan = new Artisan();
        artisan.setAname(name);
        artisan.setAmail(email);
        artisan.setAnumber(phone);
        artisan.setApwd(password); // Ensure password hashing in a real application

        // Save the artisan object in the database
        artisanService.ArtisanRegistration(artisan);

        // Redirect to the home page with a success message
        ModelAndView mv = new ModelAndView("admin");
        return mv;
    }
    // Insert Product
    @PostMapping("insertproduct")
    public ModelAndView insertProductDemo(HttpServletRequest request, @RequestParam("pimage") MultipartFile file) {
        String msg;
        ModelAndView mv = new ModelAndView();

        try {
            String name = request.getParameter("pname");
            String description = request.getParameter("pdescription");
            Double cost = Double.valueOf(request.getParameter("pcost"));

            byte[] bytes = file.getBytes();
            Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes); // Creates a Blob object from the byte array.

            Product product = new Product();
            product.setPname(name);
            product.setPdescription(description);
            product.setPcost(cost);
            product.setImage(blob);

            msg = productService.AddProduct(product);
            System.out.println(msg);

            // Redirect to viewallproducts after successful insertion
            mv.setViewName("redirect:admin");

        } catch (Exception e) {
            msg = e.getMessage();
            System.out.println(msg);

            // Stay on the addproduct page if there's an error
            mv.setViewName("addproduct");
            mv.addObject("message", "Error adding product: " + msg);
        }

        return mv;
    }
    @GetMapping("/viewartisans")
    public String viewAllArtisans(Model model) {
        // Fetch all artisans from the database
        List<Artisan> artisans = artisanService.ViewAllArtisans();

        // Add the list of artisans to the model
        
        model.addAttribute("artisans", artisans); // Pass them to the JSP
        return "viewallartisans";
    }
    
}
