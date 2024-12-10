<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
:root {
            --primary-color: #6a4c93;
            --secondary-color: #8ac4d0;
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
            width: 900px;
            height: 600px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            border-radius: 10px;
            overflow: hidden;
            position: relative;
        }

        .register-form {
            flex: 1;
            background-color: white;
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            z-index: 2;
            position: relative;
        }

        .register-form h2 {
            color: var(--primary-color);
            margin-bottom: 30px;
            font-weight: 600;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group input, .input-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        .input-group input:focus, .input-group select:focus {
            border-color: var(--primary-color);
            outline: none;
        }

        .register-btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .register-btn:hover {
            background-color: #5a3d7a;
        }
</style>
</head>
<body>
<div id="addnewartisan">
<h2>Add-Artisan Details</h2>
            <form action="insertartisan" method="post">
                <div class="input-group">
                    <input type="text" name="aname" placeholder="Username" required>
                </div>
                <div class="input-group">
                    <input type="email" name="amail" placeholder=" Email" required>
                </div>
                
                 <div class="input-group">
                    <input type="password" name="apwd" placeholder="Artisan Password" required>
                </div>
               
                
                <div class="input-group">
                    <input type="number" name="anumber" placeholder="Mobile number" required>
                </div>
                
              
                
                <button type="submit" class="register-btn">Add Artisan</button>
            </form>
            </div>
</body>
</html>