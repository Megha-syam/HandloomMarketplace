<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <style>
        /* Custom color theme */
        body {
            font-family: 'Open Sans', sans-serif;
            margin: 0;
            padding: 0;
            background: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 100%;
            max-width: 500px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        header {
            background-color: #f8e5d8;
            color: #ffffff;
            text-align: center;
            padding: 15px;
        }

        header h1 {
            margin: 0;
            font-size: 20px;
        }

        .form-container {
            padding: 20px;
            box-sizing: border-box;
        }

        .form-container h2 {
            text-align: center;
            color: #333333;
            font-size: 18px;
            margin-bottom: 15px;
        }

        .form-container label {
            display: block;
            margin-bottom: 5px;
            font-size: 13px;
            font-weight: bold;
            color: #333333;
        }

        .form-container input[type="text"],
        .form-container textarea,
        .form-container input[type="file"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 13px;
            background-color: #f9f9f9;
        }

        .form-container textarea {
            height: 80px;
            resize: none;
        }

        .form-container input[type="submit"] {
            background-color: #f8e5d8;
            color: #ffffff;
            padding: 12px 16px;
            font-size: 14px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
        }

        .form-container input[type="submit"]:hover {
            background-color: #e3c5a0;
        }

        .form-container input[type="submit"]:active {
            background-color: #d1a56b;
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>Product Management</h1>
        </header>

        <div class="form-container">
            <h2>Add Product</h2>
            <form action="insertproduct" method="post" enctype="multipart/form-data">
                
                <div class="form-group">
                    <label for="id">Product ID:</label>
                    <input type="text" id="id" name="id" required>
                </div>

                <div class="form-group">
                    <label for="name">Product Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>

                <div class="form-group">
                    <label for="description">Product Description:</label>
                    <textarea id="description" name="description" required></textarea>
                </div>

                <div class="form-group">
                    <label for="cost">Product Cost:</label>
                    <input type="text" id="cost" name="cost" required>
                </div>

                <div class="form-group">
                    <label for="image">Product Image:</label>
                    <input type="file" id="image" name="image" required>
                </div>

                <input type="submit" value="Add Product">
            </form>
        </div>
    </div>
</body>
</html>
