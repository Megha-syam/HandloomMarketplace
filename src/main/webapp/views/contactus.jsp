<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Handloom Global Fashion - Contact Us</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&family=Poppins:wght@300;400;500&display=swap');

        :root {
            --primary-color: #8B4513;
            --secondary-color: #D2691E;
            --accent-color: #DEB887;
            --bg-color: #FDF5E6;
            --text-color: #4A3728;
            --border-color: #CD853F;
        }

        body, html {
            font-family: 'Poppins', sans-serif;
            background: var(--bg-color);
            margin: 0;
            padding: 20px;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            overflow-x: hidden;
        }

        /* Weaving Pattern Background */
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: 
                repeating-linear-gradient(
                    45deg,
                    transparent,
                    transparent 10px,
                    rgba(139, 69, 19, 0.05) 10px,
                    rgba(139, 69, 19, 0.05) 20px
                ),
                repeating-linear-gradient(
                    -45deg,
                    transparent,
                    transparent 10px,
                    rgba(210, 105, 30, 0.05) 10px,
                    rgba(210, 105, 30, 0.05) 20px
                );
            z-index: -1;
        }

        .container {
            display: flex;
            width: 1000px;
            min-height: 600px;
            background: rgba(255, 250, 240, 0.95);
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 15px 35px rgba(139, 69, 19, 0.2);
            position: relative;
        }

        .container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 5px;
            background: linear-gradient(90deg, var(--primary-color), var(--secondary-color), var(--accent-color));
            animation: borderWeave 3s linear infinite;
        }

        @keyframes borderWeave {
            0% { background-position: 0% 50%; }
            100% { background-position: 100% 50%; }
        }

        .nav-buttons {
            position: absolute;
            top: 20px;
            left: 20px;
            display: flex;
            gap: 15px;
            z-index: 10;
        }

        .nav-link {
            color: var(--primary-color);
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 10px 20px;
            background: rgba(255, 250, 240, 0.9);
            border: 1px solid var(--border-color);
            border-radius: 30px;
            font-size: 14px;
            font-weight: 500;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .nav-link::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(
                90deg,
                transparent,
                rgba(210, 105, 30, 0.2),
                transparent
            );
            transition: 0.5s;
        }

        .nav-link:hover::before {
            left: 100%;
        }

        .nav-link:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(139, 69, 19, 0.2);
        }

        .contact-form {
            flex: 1;
            padding: 50px;
            position: relative;
        }

        .contact-form h2 {
            font-family: 'Playfair Display', serif;
            color: var(--primary-color);
            font-size: 32px;
            margin-bottom: 40px;
            margin-top: 30px;
            text-align: center;
            position: relative;
        }

        .contact-form h2::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 2px;
            background: var(--border-color);
            background-image: linear-gradient(
                90deg,
                var(--border-color) 50%,
                transparent 50%
            );
            background-size: 10px 100%;
            animation: borderStitch 1s linear infinite;
        }

        @keyframes borderStitch {
            0% { background-position: 0% 0%; }
            100% { background-position: 20px 0%; }
        }

        .input-group {
            margin-bottom: 25px;
            position: relative;
        }

        .input-group input,
        .input-group textarea {
            width: 100%;
            padding: 15px;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            background: rgba(255, 250, 240, 0.5);
            color: var(--text-color);
            font-size: 15px;
            transition: all 0.3s ease;
        }

        .input-group input:focus,
        .input-group textarea:focus {
            outline: none;
            border-color: var(--secondary-color);
            background: rgba(255, 250, 240, 0.8);
            box-shadow: 0 0 0 3px rgba(210, 105, 30, 0.1);
        }

        .input-group textarea {
            height: 120px;
            resize: vertical;
        }

        .floating-label {
            position: absolute;
            top: 50%;
            left: 15px;
            transform: translateY(-50%);
            color: var(--text-color);
            pointer-events: none;
            transition: all 0.3s ease;
            background: rgba(255, 250, 240, 0.9);
            padding: 0 5px;
        }

        .input-group textarea ~ .floating-label {
            top: 20px;
            transform: none;
        }

        .input-group input:focus ~ .floating-label,
        .input-group textarea:focus ~ .floating-label,
        .input-group input:not(:placeholder-shown) ~ .floating-label,
        .input-group textarea:not(:placeholder-shown) ~ .floating-label {
            top: -10px;
            font-size: 12px;
            color: var(--secondary-color);
        }

        .submit-btn {
            width: 100%;
            padding: 15px;
            background: var(--primary-color);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            position: relative;
            overflow: hidden;
            transition: all 0.3s ease;
        }

        .submit-btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(
                90deg,
                transparent,
                rgba(255, 255, 255, 0.2),
                transparent
            );
            transition: 0.5s;
        }

        .submit-btn:hover::before {
            left: 100%;
        }

        .submit-btn:hover {
            background: var(--secondary-color);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(139, 69, 19, 0.3);
        }

        .image-container {
            flex: 1;
            background: linear-gradient(135deg, var(--accent-color), var(--secondary-color));
            padding: 40px;
            position: relative;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .textile-pattern {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: 
                repeating-linear-gradient(
                    45deg,
                    transparent 0,
                    transparent 10px,
                    rgba(255, 255, 255, 0.1) 10px,
                    rgba(255, 255, 255, 0.1) 20px
                );
            animation: weavePattern 20s linear infinite;
        }

        @keyframes weavePattern {
            0% { transform: translateX(0) translateY(0); }
            100% { transform: translateX(20px) translateY(20px); }
        }

        .handloom-icon {
            width: 120px;
            height: 120px;
            margin: 0 auto;
            position: relative;
            animation: iconFloat 3s ease-in-out infinite;
        }

        @keyframes iconFloat {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        .handloom-icon::before {
            content: '';
            position: absolute;
            width: 100%;
            height: 100%;
            background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='white'%3E%3Cpath d='M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5'/%3E%3C/svg%3E") no-repeat center;
            background-size: contain;
            opacity: 0.9;
        }

        .contact-info {
            background: rgba(255, 250, 240, 0.9);
            padding: 30px;
            border-radius: 15px;
            position: relative;
            z-index: 1;
            backdrop-filter: blur(10px);
        }

        .contact-info h3 {
            font-family: 'Playfair Display', serif;
            color: var(--primary-color);
            margin-bottom: 20px;
            font-size: 24px;
        }

        .contact-info p {
            color: var(--text-color);
            margin: 15px 0;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .contact-info p svg {
            width: 20px;
            height: 20px;
            color: var(--primary-color);
        }

        /* Thread animation for borders */
        .container::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            height: 5px;
            background: linear-gradient(90deg, var(--accent-color), var(--secondary-color), var(--primary-color));
            animation: borderWeave 3s linear infinite reverse;
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .container {
                width: 90%;
                flex-direction: column;
            }
            
            .image-container {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="contact-form">
            <div class="nav-buttons">
              
                <a href="/" class="nav-link">
                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" width="18" height="18">
                        <line x1="19" y1="12" x2="5" y2="12"/>
                        <polyline points="12 19 5 12 12 5"/>
                    </svg>
                    Back
                </a>
            </div>
            <h2>Contact Handloom Global Fashion</h2>
            <form action="contact" method="post">
                <div class="input-group">
                    <input type="text" name="name" placeholder=" " required>
                    <span class="floating-label">Your Name</span>
                </div>
                <div class="input-group">
                    <input type="email" name="email" placeholder=" " required>
                    <span class="floating-label">Your Email</span>
                </div>
                <div class="input-group">
                    <input type="text" name="subject" placeholder=" " required>
                    <span class="floating-label">Subject</span>
                </div>
                <div class="input-group">
                    <textarea name="message" placeholder=" " required></textarea>
                    <span class="floating-label">Your Message</span>
                </div>
                <button type="submit" class="submit-btn">Send Message</button>
            </form>
        </div>
        <div class="image-container">
            <div class="textile-pattern"></div>
            <div class="handloom-icon"></div>
            <div class="contact-info">
                <h3>Get in Touch</h3>
                <p>
                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/>
                        <polyline points="22,6 12,13 2,6"/>
                    </svg>
                    info@handloomglobalfashion.com
                </p>
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" width="20" height="20">
                        <path d="M3 1l3 2c3-1 6-1 9 0l3-2c4 2 5 6 3 9-3 6-7 11-12 14C4 18 0 11 3 1z"/>
                    </svg>
                    +1 234 567 890
                </p>
                <p>
                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" width="20" height="20">
                        <path d="M17 8a5 5 0 0 1 0 8M3 12a9 9 0 0 1 18 0M6.5 9.5a13 13 0 0 1 11 0"/>
                    </svg>
                    1234 Artisan Way, Weaverville, TX
                </p>
            </div>
        </div>
    </div>
</body>
</html>