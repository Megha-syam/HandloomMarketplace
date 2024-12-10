<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Threads of Tradition</title>
    <link rel="icon" href="views/images/1.png" sizes="16x16" type="image/png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            margin: 0;
            padding: 0;
            background: #f2f2f2;
        }
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #f8e5d8;
            color: #ffffff;
            padding: 10px 20px;
        }
        header h1 {
            color: #ffffff;
            margin: 0;
            font-size: 24px;
        }
        .profile-icon {
            width: 32px;
            height: 32px;
            cursor: pointer;
            border-radius: 50%;
            object-fit: cover;
        }
        .search-container {
            display: flex;
            justify-content: center;
            flex-grow: 1;
        }
        .search {
            display: flex;
            width: 100%;
            justify-content: center;
        }
        .searchTerm {
            width: 50%;
            border: 3px solid #00B4CC;
            border-right: none;
            padding: 6px; /* Reduced padding */
            height: 30px; /* Same height as the button */
            border-radius: 5px 0 0 5px;
            outline: none;
            color: #9DBFAF;
            font-size: 14px; /* Adjusted font size */
        }
        .searchTerm:focus {
            color: #00B4CC;
        }
        .searchButton {
            width: 35px; /* Same width as before */
            height: 50px; /* Same height as the input field */
            border: 1px solid #00B4CC;
            background: #00B4CC;
            text-align: center;
            color: #fff;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
            font-size: 18px; /* Same font size as before */
            display: flex;
            justify-content: center;
            align-items: center;
        }
        main {
            display: flex;
        }
        .sidebar {
            width: 20%;
            background-color: #f4f4f4;
            padding: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }
        .content {
            width: 80%;
            padding: 20px;
        }
        .product-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        .product-card {
            flex: 0 0 calc(33.333% - 20px);
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 10px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .product-card img {
            max-width: 100%;
            height: auto;
        }
        .footer {
            background-color: #333333;
            color: #ffffff;
            text-align: center;
            padding: 10px 0;
        }
        .logo {
            font-size: 1.5rem;
            font-weight: bold;
            color: #b76e79;
        }
    </style>
</head>
<body>
    <header>
        <div style="display: flex; align-items: center; justify-content: space-between; width: 100%;">
            <h1 class="logo">Threads of Tradition</h1>
            <div class="search-container" style="flex-grow: 1; display: flex; justify-content: center; padding-left: 20px;">
                <form action="index.jsp" method="get" style="width: 100%; display: flex; justify-content: center;">
                    <div class="search" style="width: 80%; display: flex; align-items: center;">
                        <input type="text" class="searchTerm" name="search" placeholder="What are you looking for?" style="width: 100%; padding: 6px; height: 30px; border: 3px solid #00B4CC; border-radius: 5px 0 0 5px; font-size: 14px;">
                        <button type="submit" class="searchButton" style="width: 35px; height: 47px; border: 1px solid #00B4CC; background: #00B4CC; text-align: center; color: #fff; border-radius: 0 5px 5px 0; cursor: pointer; font-size: 18px;">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </form>
            </div>
            <img src="views/images/1.png" alt="Profile Icon" class="profile-icon" onclick="location.href='customersdashboard.jsp';" style="width: 32px; height: 32px; cursor: pointer; border-radius: 50%; object-fit: cover;">
        </div>
    </header>
    <main>
        <aside class="sidebar">
            <h3>Filters</h3>
            <form action="index.jsp" method="get">
                <label>Price Range:</label><br>
                <input type="number" name="minPrice" placeholder="Min"> - 
                <input type="number" name="maxPrice" placeholder="Max"><br><br>
                <label>Country:</label><br>
                <select name="country">
                    <option value="">All</option>
                    <option value="India">India</option>
                    <option value="USA">USA</option>
                </select><br><br>
                <label>Type:</label><br>
                <input type="checkbox" name="type" value="Saree"> Saree<br>
                <input type="checkbox" name="type" value="Shawl"> Shawl<br>
                <input type="submit" value="Apply">
            </form>
        </aside>
        <section class="content">
            <div class="product-grid">
                <c:forEach var="product" items="${products}">
                    <div class="product-card">
                        <img src="${product.image}" alt="${product.name}">
                        <h4>${product.name}</h4>
                        <p>${product.price}</p>
                        <button>Add to Cart</button>
                        <button>View Details</button>
                    </div>
                </c:forEach>
            </div>
        </section>
    </main>
    <footer class="footer">
        © 2024 Threads of Tradition
    </footer>
</body>
</html>
