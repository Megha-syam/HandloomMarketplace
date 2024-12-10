<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Handloom Global Fashion - Login</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        :root {
            --primary-color: #6a4c93;
            --secondary-color: #f8e5d8;
            --text-color: #333;
            --bg-color: #f4f4f4;
        }

        body, html {
            font-family: 'Poppins', sans-serif;
            background-color: var(--bg-color);
            margin: 0;
            padding: 0;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        .container {
            display: flex;
            width: 800px;
            height: 500px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            border-radius: 10px;
            overflow: hidden;
            position: relative;
        }

        .login-form {
            flex: 1;
            background-color: white;
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            z-index: 2;
        }

        .login-form h2 {
            color: var(--primary-color);
            margin-bottom: 30px;
            font-weight: 600;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        .input-group input:focus {
            border-color: var(--primary-color);
            
            outline: none;
        }

        .login-btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-btn:hover {
            background-color: #5a3d7a;
        }

        .image-container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
            position: relative;
            background: linear-gradient(120deg, #f0e1d1, #d6b5e2);
        }

        .fabric-pattern {
            position: absolute;
            width: 200%;
            height: 200%;
            background-image: 
                linear-gradient(45deg, rgba(255, 255, 255, 0.2) 25%, transparent 25%),
                linear-gradient(-45deg, rgba(255, 255, 255, 0.2) 25%, transparent 25%),
                linear-gradient(45deg, transparent 75%, rgba(255, 255, 255, 0.2) 75%),
                linear-gradient(-45deg, transparent 75%, rgba(255, 255, 255, 0.2) 75%);
            background-size: 40px 40px;
            animation: movePattern 20s linear infinite;
            z-index: 1;
        }

        @keyframes movePattern {
            0% { background-position: 0 0; }
            100% { background-position: 100% 100%; }
        }

        .thread {
            position: absolute;
            width: 4px;
            height: 100%;
            background-color: #f8e5d8;
            animation: weave 3s linear infinite;
        }

        .thread:nth-child(1) { left: 25%; animation-delay: -0.5s; }
        .thread:nth-child(2) { left: 50%; animation-delay: -1s; }
        .thread:nth-child(3) { left: 75%; animation-delay: -1.5s; }
        .thread:nth-child(4) { left: 10%; animation-delay: -2s; }

        @keyframes weave {
            0%, 100% { transform: translateY(-100%); }
            50% { transform: translateY(100%); }
        }

        .fabric {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://images.unsplash.com/photo-1504461252303-4407c8f84a15?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&q=80&w=400') no-repeat center center;
            background-size: cover;
            opacity: 0.5;
            animation: fabricWave 5s ease-in-out infinite;
            z-index: 0;
        }

        @keyframes fabricWave {
            0% { transform: translateY(0); }
            50% { transform: translateY(-5px); }
            100% { transform: translateY(0); }
        }
        
     .register-link {
    margin-top: 20px;
    font-size: 14px;
    color: var(--text-color);
    text-align: left;
}

.register-link a {
    color: var(--primary-color);
    text-decoration: none;
    font-weight: 600;
}

.register-link a:hover {
    text-decoration: underline;
}
    </style>
</head>
<body>
    <div class="container">
        <div class="login-form">
            <h2>Threads of Tradition-Customer Login</h2>
            <form action="checkcustomerlogin" method="post">
                <div class="input-group">
                    <input type="email" name="cmail" placeholder="Email" required>
                </div>
                <div class="input-group">
                    <input type="password" name="cpwd" placeholder="Password" required>
                </div>
                <button type="submit" class="login-btn">Login</button>
            </form>
             <p class="register-link">
        Don’t have an account? <a href="customersignup">Register now</a>
    </p>
        </div>
        <div class="image-container">
            <div class="fabric-pattern"></div>
            <div class="thread"></div>
            <div class="thread"></div>
            <div class="thread"></div>
            <div class="thread"></div>
            <div class="fabric"></div>
        </div>
    </div>
</body>
</html>