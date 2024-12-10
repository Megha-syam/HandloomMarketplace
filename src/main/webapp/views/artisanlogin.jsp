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

        .error-message {
            color: red;
            margin-bottom: 20px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="login-form">
            <h2>Threads of Tradition - Artisan Login</h2>
            
            <!-- Display error message dynamically -->
            <c:if test="${not empty message}">
                <div class="error-message">
                    ${message}
                </div>
            </c:if>

            <form action="checkartisanlogin" method="post">
                <div class="input-group">
                    <input type="text" name="amail" placeholder="Enter Email" required>
                </div>
                <div class="input-group">
                    <input type="password" name="apwd" placeholder="Password" required>
                </div>
                <button type="submit" class="login-btn">Login</button>
            </form>

            <p class="register-link">
                Don’t have an account? <a href="artisansignup">Register now</a>    
            </p>
        </div>
    </div>
</body>
</html>