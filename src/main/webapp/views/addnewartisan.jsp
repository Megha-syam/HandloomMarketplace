<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Artisan</title>
    <style>
        /* CSS STYLES START */
        :root {
            --primary-color: #800020;  /* Deep Burgundy */
            --secondary-color: #c19a6b; /* Warm Gold */
            --accent-color: #4b0082;   /* Deep Indigo */
            --background-color: #fff8e7; /* Soft Cream */
            --text-color: #2c1810;     /* Deep Brown */
            --card-bg: #ffffff;
            --success-color: #2e6930;
            --warning-color: #8b4513;
            --hover-color: #9c1a1a;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            transition: all 0.3s ease;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--background-color);
            line-height: 1.6;
            color: var(--text-color);
        }

        header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 1.5rem;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            text-align: center;
            font-size: 2rem;
        }

        .container {
            width: 100%;
            max-width: 600px;
            margin: 2rem auto;
            background-color: var(--card-bg);
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .form-container {
            padding: 2rem;
        }

        .form-container h2 {
            text-align: center;
            color: var(--primary-color);
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
        }

        .form-group {
            margin-bottom: 1rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
        }

        .form-control {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
        }

        .btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            border-radius: 5px;
            padding: 1rem;
            width: 100%;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: var(--hover-color);
        }
        /* CSS STYLES END */
    </style>
</head>
<body>
    

    <div class="container">
        <div class="form-container">
            <h2>Add Artisan</h2>
            <form action="insertartisan" method="post">
                <div class="form-group">
                    <label for="name">Artisan Name:</label>
                    <input type="text" id="name" name="name" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number:</label>
                    <input type="tel" id="phone" name="phone" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" required>
                </div>
                <button type="submit" class="btn">Add Artisan</button>
            </form>
        </div>
    </div>
</body>
</html>
