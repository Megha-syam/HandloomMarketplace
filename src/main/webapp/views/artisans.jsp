<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artisan Dashboard - Handloom Fashion</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        /* Global Styles */
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
            color: var(--text-primary);
        }

        /* Header Styles */
        header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 1.5rem;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .header-content {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo-section {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .logo-section i {
            font-size: 2rem;
        }

        header h1 {
            font-size: 2rem;
            font-weight: 600;
        }

        nav ul {
            display: flex;
            gap: 2rem;
            list-style: none;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        nav ul li a:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }

        /* Main Content Styles */
        main {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 1rem;
        }

        .welcome-section {
            background-color: var(--card-bg);
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 2rem;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2rem;
        }

        .stat-card {
            background-color: var(--card-bg);
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .stat-card i {
            font-size: 2rem;
            color: var(--primary-color);
            margin-bottom: 1rem;
        }

        /* Button Styles */
        .button-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1rem;
            margin-bottom: 2rem;
        }

        .btn {
            padding: 1rem 1.5rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 500;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            transition: transform 0.2s ease;
        }

        .btn:hover {
            transform: translateY(-2px);
        }

        .btn-primary {
            background-color: var(--primary-color);
            color: white;
        }

        .btn-primary:hover {
            background-color: var(--secondary-color);
        }

        /* Products Table Styles */
        .products-table {
            width: 100%;
            border-collapse: collapse;
            background-color: var(--card-bg);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .products-table th,
        .products-table td {
            padding: 1rem;
            text-align: left;
            border-bottom: 1px solid #eee;
        }

        .products-table th {
            background-color: var(--primary-color);
            color: white;
        }

        .products-table tr:hover {
            background-color: #f8f9fa;
        }

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 1000;
        }

        .modal-content {
            background-color: var(--card-bg);
            width: 90%;
            max-width: 500px;
            margin: 2rem auto;
            padding: 2rem;
            border-radius: 10px;
            position: relative;
        }

        .close-modal {
            position: absolute;
            top: 1rem;
            right: 1rem;
            cursor: pointer;
            font-size: 1.5rem;
        }

        /* Form Styles */
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

        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .fade-in {
            animation: fadeIn 0.3s ease-in;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .header-content {
                flex-direction: column;
                text-align: center;
                gap: 1rem;
            }

            nav ul {
                flex-direction: column;
                gap: 1rem;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="header-content">
            <div class="logo-section">
                <i class="fas fa-paint-brush"></i>
                <h1>Artisan Dashboard</h1>
            </div>
            <nav>
                <ul>
                    <li><a href="artisandashboard" onclick=""><i class="fas fa-home"></i> Dashboard</a></li>
                    <li><a href="#" onclick="toggleView('products')"><i class="fas fa-box"></i> Products</a></li>
                    <li><a href="#" onclick="toggleView('orders')"><i class="fas fa-shopping-cart"></i> Orders</a></li>
                    <li><a href="/" id="logoutBtn"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <div id="dashboard-view" class="fade-in">
            <section class="welcome-section">
                <h2>Welcome back, <span id="artisan-name">Artisan</span>!</h2>
                <p>Here's your overview for today</p>
            </section>

            <div class="stats-grid">
                <div class="stat-card">
                    <i class="fas fa-box"></i>
                    <h3>Total Products</h3>
                    <p id="total-products">0</p>
                </div>
                <div class="stat-card">
                    <i class="fas fa-shopping-cart"></i>
                    <h3>Active Orders</h3>
                    <p id="active-orders">0</p>
                </div>
                <div class="stat-card">
                    <i class="fas fa-money-bill-wave"></i>
                    <h3>Total Revenue</h3>
                    <p id="total-revenue">$0</p>
                </div>
            </div>
        </div>
        <div id="products-view" class="fade-in" style="display: none;">
            <section>
               
                <div class="button-container">
                    <a class="btn btn-primary" href="addproduct">
                        <i class="fas fa-plus"></i> Add New Product
                    </a>
                </div>
                
                 <div class="button-container">
                    <a class="btn btn-primary" href="viewallproducts">
                        <i class="fas fa-plus"></i> View all Products
                    </a>
                </div>
                
                <div class="button-container">
                    <a class="btn btn-primary" href="viewallproducts">
                        <i class="fas fa-plus"></i> Update Product
                    </a>
                </div>
                
                <div class="button-container">
                    <a class="btn btn-primary" href="viewallproducts">
                        <i class="fas fa-plus"></i> Delete Products
                    </a>
                </div>
        
            </section>
        </div>

        <!-- Add Product Modal -->
        
    </main>

    <script>
        function toggleView(viewName) {
            const dashboardView = document.getElementById('dashboard-view');
            const productsView = document.getElementById('products-view');

            if (viewName === 'dashboard') {
                dashboardView.style.display = 'block';
                productsView.style.display = 'none';
            } else if (viewName === 'products') {
                dashboardView.style.display = 'none';
                productsView.style.display = 'block';
                loadProductsTable();
            }
        }

        function showModal(modalId) {
            const modal = document.getElementById(modalId);
            modal.style.display = 'block';
        }

        function hideModal(modalId) {
            const modal = document.getElementById(modalId);
            modal.style.display = 'none';
        }

        function loadProductsTable() {
            // Fetch and display product data from the server
            // This is where you would make an API call to retrieve the product data
          
            

            const productTableBody = document.getElementById('product-table-body');
            productTableBody.innerHTML = '';

            productData.forEach(product => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.description}</td>
                    <td>$${product.price.toFixed(2)}</td>
                    <td>
                        <button class="btn btn-primary" onclick="editProduct(${product.id})">
                            <i class="fas fa-edit"></i> Edit
                        </button>
                        <button class="btn btn-primary" onclick="deleteProduct(${product.id})">
                            <i class="fas fa-trash"></i> Delete
                        </button>
                    </td>
                `;
                productTableBody.appendChild(row);
            });
        }

        // Add event listener for the add product form
        document.getElementById('addProduct').addEventListener('submit', function(e) {
            e.preventDefault();
            const formData = new FormData(e.target);
            // Here, you would submit the form data to the server to create a new product
            console.log('New product data:', Object.fromEntries(formData));
            hideModal('addProduct');
            loadProductsTable(); // Refresh the products table
        });

document.getElementById('logoutBtn').addEventListener('click', function(e) {
    e.preventDefault();
    if(confirm('Are you sure you want to logout?')) {
        // Implement logout logic
        window.location.href = '/';
    }
});

</script>
        
</body>
</html>