<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Global Handloom Treasures</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            line-height: 1.6;
            color: #4a4a4a;
            background-color: #f9f7f4;
        }

        header {
            background-color: #f8e5d8;
            color: #4a4a4a;
            padding: 1rem 0;
            position: fixed;
            width: 100%;
            top:0;
            z-index: 1000;
            transition: background-color 0.3s ease;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        header.scrolled {
            background-color: rgba(248, 229, 216, 0.9);
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 2rem;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: bold;
            color: #b76e79;
        }

        nav ul {
            list-style-type: none;
            display: flex;
        }

        nav ul li {
            margin-left: 1.5rem;
        }

        nav ul li a {
            color: #4a4a4a;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        nav ul li a:hover {
            color: #b76e79;
        }

        .hero {
            background-image: ;
            background-size: cover;
            background-position: center;
            height: 100vh;
            
            align-items: center;
            justify-content: center;
            text-align: center;
            
           
        }

        .hero1::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
           
        }

        .hero1-content {
            position: relative;
            z-index: 1;
            max-width: 600px;
            padding: 1rem;
        }

        .hero img {
            max-width: 100%;
            height: auto;
            margin-bottom: 1rem;
        }

        .hero1 h1 {
            font-size: 3.5rem;
            margin-bottom: 1rem;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
             text-align: center;
        }

        .hero1 p {
            font-size: 1.2rem;
            max-width: 600px;
            margin: 0 auto 1.5rem;
             text-align: center;
        }

        .cta-button {
            display: inline-block;
            background-color: #b76e79;
            color: #fff;
            padding: 0.8rem 1.5rem;
            text-decoration: none;
             align:center;
            border-radius: 50px;
            transition: all 0.3s ease;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .cta-button:hover {
            background-color: #a25965;
            transform: translateY(-3px);
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
            align: center;
        }

        .featured-products {
            padding: 5rem 0;
            text-align: center;
            background-color: #fff;
        }

        .section-title {
            font-size: 2.5rem;
            margin-bottom: 3rem;
            color: #4a4a4a;
            position: relative;
        }

        .section-title::after {
            content: '';
            display: block;
            width: 50px;
            height: 3px;
            background-color: #b76e79;
            margin: 1rem auto 0;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            padding: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .product-card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: all 0.3s ease;
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        }

        .product-card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .product-card:hover img {
            transform: scale(1.1);
        }

        .product-info {
            padding: 1.5rem;
        }

        .product-info h3 {
            margin-bottom: 0.5rem;
            font-size: 1.2rem;
            color: #4a4a4a;
        }

        .product-info p {
            color: #7f8c8d;
            margin-bottom: 1rem;
            font-size: 0.9rem;
        }

        .product-price {
            font-weight: bold;
            color: #b76e79;
            font-size: 1.2rem;
        }

        .product-origin {
            position: absolute;
            top: 10px;
            left: 10px;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 0.3rem 0.6rem;
            border-radius: 20px;
            font-size: 0.8rem;
            color: #4a4a4a;
        }

        .about {
            background-color: #f8e5d8;
            padding: 5rem 0;
            text-align: center;
        }

        .about-content {
            max-width: 800px;
            margin: 0 auto;
            padding: 0 2rem;
        }

        .artisan-stories {
            padding: 5rem 0;
            background-color: #fff;
        }

        .story-slider {
            max-width: 1000px;
            margin: 0 auto;
            display: flex;
            overflow-x: auto;
            scroll-snap-type: x mandatory;
            scroll-behavior: smooth;
            -webkit-overflow-scrolling: touch;
            padding: 2rem 0;
        }

        .story-card {
            flex: 0 0 300px;
            margin-right: 2rem;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            scroll-snap-align: start;
        }

        .story-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .story-info {
            padding: 1.5rem;
        }

        .story-info h3 {
            margin-bottom: 0.5rem;
            font-size: 1.2rem;
            color: #4a4a4a;
        }

        .story-info p {
            color: #7f8c8d;
            font-size: 0.9rem;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 2000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,0.5);
        }

        .modal-content {
            background-color: #fff;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 500px;
            border-radius: 10px;
            position: relative;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        footer {
            background-color: #b76e79;
            color: #fff;
            text-align: center;
            padding: 1.5rem 0;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        footer p {
            margin: 0;
        }
        
        .dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
    z-index: 1;
}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown-content a {
    color: #4a4a4a;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {
   .dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
    z-index: 1;
}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown-content a {
    color: #4a4a4a;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {
    background-color: #b76e79;
    color: white;
}
   
    color: brown;
}


.hero {
    height: 100vh;
    position: relative;
    overflow: hidden;
    margin-top: 80px; /* Adjust based on your header height */
}

/* Carousel Container */
.carousel {
    width: 100%;
    height: 100%;
    position: relative;
}

/* Carousel Inner Container */
.carousel-inner {
    width: 100%;
    height: 100%;
    position: relative;
}

/* Individual Slides */
.carousel-slide {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    opacity: 0;
    transition: opacity 0.8s ease-in-out;
    display: flex;
    align-items: center;
    justify-content: center;
}

.carousel-slide.active {
    opacity: 1;
}

/* Slide Images */
.carousel-slide img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    filter: brightness(0.8);
}

/* Caption Styles */
.carousel-caption {
    position: absolute;
    bottom: 30%;
    left: 50%;
    transform: translateX(-50%);
    text-align: center;
    color: #fff;
    z-index: 2;
    width: 80%;
    max-width: 800px;
    opacity: 0;
    transition: all 0.5s ease-in-out;
}

.carousel-slide.active .carousel-caption {
    bottom: 40%;
    opacity: 1;
}

.carousel-caption h2 {
    font-size: 3.5rem;
    font-weight: 700;
    margin-bottom: 1rem;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
}

.carousel-caption p {
    font-size: 1.5rem;
    text-shadow: 1px 1px 2px rgba(0,0,0,0.5);
}

/* Navigation Buttons */
.carousel-button {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background: rgba(255, 255, 255, 0.3);
    border: none;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    cursor: pointer;
    color: white;
    font-size: 24px;
    transition: all 0.3s ease;
    z-index: 3;
}

.carousel-button:hover {
    background: rgba(255, 255, 255, 0.5);
}

.carousel-button.prev {
    left: 20px;
}

.carousel-button.next {
    right: 20px;
}

/* Dots Navigation */
.carousel-dots {
    position: absolute;
    bottom: 20px;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    gap: 10px;
    z-index: 3;
}

.dot {
    width: 12px;
    height: 12px;
    border-radius: 50%;
    background: rgba(255, 255, 255, 0.5);
    cursor: pointer;
    transition: all 0.3s ease;
}

.dot.active {
    background: #fff;
    transform: scale(1.2);
}

/* Responsive Adjustments */
@media (max-width: 768px) {
    .carousel-caption h2 {
        font-size: 2.5rem;
    }
    
    .carousel-caption p {
        font-size: 1.2rem;
    }
    
    .carousel-button {
        width: 40px;
        height: 40px;
        font-size: 20px;
    }
}
        
    </style>
</head>
<body>

<header>
    <nav>
        <div class="logo">Threads Of Tradition</div>
        <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#products">Products</a></li>
            <li><a href="#about">About Us</a></li>
            <li><a href="#artisan-stories">Artisan Stories</a></li>
            <li><a href="contact">Contact</a></li>
        
            <li class="dropdown">
                <a href="javascript:void(0)" class="">Login</a>
                <div class="dropdown-content">
                    <a href="artisanlogin">Artisan</a>
                    
                    <a href="customerlogin">Buyer</a>
                </div>
            </li>
           <li class="dropdown">
                <a href="javascript:void(0)" class="">Register</a>
                <div class="dropdown-content">
                    <a href="artisansignup">Artisan</a>
                    
                    <a href="customersignup">Buyer</a>
                </div>
            </li>
        </ul>
    </nav>
</header>

<section class="hero" id="home">
    <div class="carousel">
        <div class="carousel-inner">
            <div class="carousel-slide">
                <img src="views/images/hfp-caro-5.jpg" alt="Traditional Handloom Sarees">
                <div class="carousel-caption">
                    <h2>Traditional Handloom Sarees</h2>
                    <p>Discover the elegance of hand-woven traditions</p>
                </div>
            </div>
            
            <div class="carousel-slide">
                <img src="views/images/hfp-caro-1.jpg" alt="Artisan Crafted Fabrics">
                <div class="carousel-caption">
                    <h2>Artisan Crafted Fabrics</h2>
                    <p>Discover the elegance of hand-woven traditions</p>
                </div>
            </div>
            <div class="carousel-slide">
                <img src="views/images/hfp-caro-2.jpg" alt="Artisan Crafted Fabrics">
                <div class="carousel-caption">
                    <h2>Artisan Crafted Fabrics</h2>
                    <p>Each thread tells a story of heritage</p>
                </div>
            </div>
            <div class="carousel-slide">
                <img src="views/images/hfp-caro-3.jpg" alt="Modern Handloom Fashion">
                <div class="carousel-caption">
                    <h2>Modern Handloom Fashion</h2>
                    <p>Where tradition meets contemporary style</p>
                </div>
            </div>
            
             <div class="carousel-slide">
                <img src="views/images/hfp-caro-4.jpg" alt="Artisan Crafted Fabrics">
                <div class="carousel-caption">
                    <h2>Artisan Crafted Fabrics</h2>
                    <p>Each thread tells a story of heritage</p>
                </div>
            </div>
            
             
        </div>
        
        <button class="carousel-button prev" aria-label="Previous slide">&#10094;</button>
        <button class="carousel-button next" aria-label="Next slide">&#10095;</button>
        
        <div class="carousel-dots">
            <span class="dot active"></span>
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
           
        </div>
    </div>
</section>


<section class="featured-products" id="products">
    <h2 class="section-title">Featured Products</h2>
    <div class="product-grid">
        <div class="product-card">
            <div class="product-origin">India</div>
            <img src="views/images/hfp1.jpeg" alt="Product 1">
            <div class="product-info">
                <h3>Handloom Traditional Saree</h3>
                <p>Soft and breathable, perfect for all seasons.</p>
                <p class="product-price">$25.00</p>
            </div>
        </div>
        <div class="product-card">
            <div class="product-origin">Bangladesh</div>
            <img src="views/images/hfp2.jpeg" alt="Product 2">
            <div class="product-info">
                <h3>Artisan-Crafted Shawl</h3>
                <p>Elegantly crafted, ideal for special occasions.</p>
                <p class="product-price">$120.00</p>
            </div>
        </div>
        <div class="product-card">
            <div class="product-origin">Nepal</div>
            <img src="views/images/hfp3.jpeg" alt="Product 3">
            <div class="product-info">
                <h3>Handmade Table Runner</h3>
                <p>Keep warm with this beautifully designed shawl.</p>
                <p class="product-price">$45.00</p>
            </div>
        </div>
        <div class="product-card">
            <div class="product-origin">India</div>
            <img src="views/images/hfp.jpeg" alt="Product 4">
            <div class="product-info">
                <h3>Traditional Handloom Fabric</h3>
                <p>Handcrafted and unique, each piece tells a story.</p>
                <p class="product-price">$30.00</p>
            </div>
        </div>
    </div>
</section>

<section class="about" id="about">
    <h2 class="section-title">About Us</h2>
    <div class="about-content">
        <p>Global Handloom Treasures is dedicated to showcasing the intricate craftsmanship of handloom artisans worldwide. Our mission is to promote sustainable fashion while preserving traditional techniques.</p>
    </div>
</section>

<section class="artisan-stories" id="artisan-stories">
    <h2 class="section-title" align="center">Artisan Stories</h2>
    <div class="story-slider">
        <div class="story-card">
            <img src="views/images/art2.jpeg" alt="Story 1">
            <div class="story-info">
                <h3>Meet Anika</h3>
                <p>Anika has been weaving traditional textiles for over 20 years, keeping her family heritage alive.</p>
            </div>
        </div>
        <div class="story-card">
            <img src="views/images/art3.jpeg" alt="Story 2">
            <div class="story-info">
                <h3>Meet Ravi</h3>
                <p>Ravi's passion for pottery is evident in every piece he creates, each reflecting his unique style.</p>
            </div>
        </div>
        <div class="story-card">
            <img src="views/images/art1.jpeg" alt="Story 3">
            <div class="story-info">
                <h3>Meet Priya</h3>
                <p>Priya crafts stunning sarees that tell the story of her region's culture and traditions.</p>
            </div>
        </div>
    </div>
</section>

<footer>
    <p>&copy; 2024 Global Handloom Treasures. All rights reserved.</p>
</footer>

<script>
    window.addEventListener('scroll', function() {
        const header = document.querySelector('header');
        if (window.scrollY > 50) {
            header.classList.add('scrolled');
        } else {
            header.classList.remove('scrolled');
        }
    });
    
    document.addEventListener('DOMContentLoaded', function() {
        const slides = document.querySelectorAll('.carousel-slide');
        const dots = document.querySelectorAll('.dot');
        const prevButton = document.querySelector('.carousel-button.prev');
        const nextButton = document.querySelector('.carousel-button.next');
        let currentSlide = 0;
        
        // Initialize first slide
        slides[0].classList.add('active');
        
        // Function to change slide
        function goToSlide(n) {
            slides[currentSlide].classList.remove('active');
            dots[currentSlide].classList.remove('active');
            
            currentSlide = (n + slides.length) % slides.length;
            
            slides[currentSlide].classList.add('active');
            dots[currentSlide].classList.add('active');
        }
        
        // Next slide
        function nextSlide() {
            goToSlide(currentSlide + 1);
        }
        
        // Previous slide
        function prevSlide() {
            goToSlide(currentSlide - 1);
        }
        
        // Event listeners
        prevButton.addEventListener('click', prevSlide);
        nextButton.addEventListener('click', nextSlide);
        
        // Dot navigation
        dots.forEach((dot, index) => {
            dot.addEventListener('click', () => {
                goToSlide(index);
            });
        });
        
        // Auto advance slides
        setInterval(nextSlide, 5000);
    });
    
</script>

</body>
</html>
