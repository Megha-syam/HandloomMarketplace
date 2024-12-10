<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Handloom Fashion</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
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
            color: var(--text-color);
            line-height: 1.6;
            background-image: linear-gradient(45deg, #fff8e7 25%, #fff5e6 25%, #fff5e6 50%, #fff8e7 50%, #fff8e7 75%, #fff5e6 75%, #fff5e6);
            background-size: 40px 40px;
        }

        header {
            background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
            color: white;
            padding: 1rem;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .header-content {
            max-width: 1400px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 1rem;
            padding: 0.5rem;
            border: 2px solid var(--secondary-color);
            border-radius: 8px;
        }

        .logo i {
            font-size: 2rem;
            color: var(--secondary-color);
        }

        .logo h1 {
            font-size: 1.5rem;
            font-weight: 600;
            background: linear-gradient(to right, #fff, var(--secondary-color));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        nav ul {
            list-style: none;
            display: flex;
            gap: 2rem;
        }

        nav a {
            color: white;
            text-decoration: none;
            padding: 0.8rem 1.2rem;
            border-radius: 6px;
            transition: all 0.3s;
            border: 1px solid transparent;
        }

        nav a:hover {
            background-color: var(--hover-color);
            border-color: var(--secondary-color);
            transform: translateY(-2px);
        }

        main {
            max-width: 1400px;
            margin: 2rem auto;
            padding: 0 1rem;
        }

        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,0.7);
            z-index: 1001;
        }

        .modal-content {
            position: relative;
            background-color: var(--card-bg);
            margin: 5% auto;
            padding: 2rem;
            width: 80%;
            max-width: 800px;
            border-radius: 12px;
            box-shadow: 0 5px 25px rgba(0,0,0,0.2);
        }

        .close-btn {
            position: absolute;
            right: 1.5rem;
            top: 1rem;
            font-size: 1.5rem;
            cursor: pointer;
            color: var(--text-color);
        }

        .dashboard-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .dashboard-card {
            background: var(--card-bg);
            border-radius: 12px;
            padding: 1.8rem;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            transition: all 0.3s;
            border: 1px solid rgba(0,0,0,0.1);
        }

        .dashboard-card:hover {
            transform: translateY(-8px) scale(1.02);
            box-shadow: 0 8px 25px rgba(0,0,0,0.15);
        }

        .card-header {
            display: flex;
            align-items: center;
            gap: 1rem;
            margin-bottom: 1.5rem;
            padding-bottom: 1rem;
            border-bottom: 2px solid var(--secondary-color);
        }

        .card-header i {
            font-size: 1.8rem;
            color: var(--primary-color);
            background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .btn-group {
            display: flex;
            flex-direction: column;
            gap: 0.8rem;
        }

        .btn {
            padding: 1rem 1.2rem;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 0.8rem;
            font-weight: 500;
            transition: all 0.3s;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            position: relative;
            overflow: hidden;
        }

        .btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(
                120deg,
                transparent,
                rgba(255,255,255,0.2),
                transparent
            );
            transition: 0.5s;
        }

        .btn:hover::before {
            left: 100%;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
            color: white;
        }

        .btn-secondary {
            background: linear-gradient(135deg, var(--secondary-color), #987654);
            color: white;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1rem;
        }

        th, td {
            padding: 1rem;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: var(--primary-color);
            color: white;
        }

        tr:hover {
            background-color: rgba(0,0,0,0.05);
        }

        .action-btn {
            padding: 0.5rem 1rem;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin: 0 0.2rem;
        }

        .edit-btn {
            background-color: var(--secondary-color);
            color: white;
        }

        .delete-btn {
            background-color: var(--warning-color);
            color: white;
        }

        @media (max-width: 768px) {
            .header-content {
                flex-direction: column;
                gap: 1rem;
            }

            nav ul {
                flex-direction: column;
                align-items: center;
            }

            .dashboard-grid {
                grid-template-columns: 1fr;
            }

            .modal-content {
                width: 95%;
                margin: 10% auto;
            }
        }
       
    </style>
</head>
<body>
    <header>
        <div class="header-content">
            <div class="logo">
                <i class="fas fa-infinity"></i>
                <h1>Handloom Fashion Admin</h1>
            </div>
            <nav>
                <ul>
                    <li><a href="admin"><i class="fas fa-home"></i> Dashboard</a></li>
                    <li><a href="adminlogout.jsp" id="logoutBtn"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <!-- Artisan Modal (same as your previous example) -->
        <div id="artisanModal" class="modal">
            <!-- Modal Content -->
        </div>

        <!-- Products Modal -->
        <div id="productsModal" class="modal">
            <div class="modal-content">
                <span class="close-btn">&times;</span>
                <h2>Product Management</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Product Name</th>
                            <th>Category</th>
                            <th>Price</th>
                            <th>Stock</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>P001</td>
                            <td>Ikat Saree</td>
                            <td>Sarees</td>
                            <td>₹15,000</td>
                            <td>25</td>
                            <td>
                                <button class="action-btn edit-btn">Edit</button>
                                <button class="action-btn delete-btn">Delete</button>
                            </td>
                        </tr>
                        <tr>
                            <td>P002</td>
                            <td>Banarasi Dupatta</td>
                            <td>Dupattas</td>
                            <td>₹8,000</td>
                            <td>40</td>
                            <td>
                                <button class="action-btn edit-btn">Edit</button>
                                <button class="action-btn delete-btn">Delete</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="dashboard-grid">
            <div class="dashboard-card">
                <div class="card-header">
                    <i class="fas fa-users"></i>
                    <h3>Artisan Management</h3>
                </div>
                <div class="btn-group">
                    <a class="btn btn-primary" href="viewartisans">
                        <i class="fas fa-eye"></i> View Artisans
                    </a>
                    <div class="button-container">
                    <a class="btn btn-primary" href="addnewartisan">
                        <i class="fas fa-plus"></i> Add New Artisan
                    </a>
                </div>
                </div>
            </div>

            <div class="dashboard-card">
                <div class="card-header">
                    <i class="fas fa-tshirt"></i>
                    <h3>Product Management</h3>
                </div>
                <div class="btn-group">
                    <a class="btn btn-primary" href="viewallproducts">
                        <i class="fas fa-eye"></i> View Products
                    </a>
                    <div class="button-container">
                    <a class="btn btn-primary" href="addproduct">
                        <i class="fas fa-plus"></i> Add New Product
                    </a>
                </div>
                </div>
            </div>
        </div>
    </main>

    <script>
 // Modal functionality
    function showModal(modalId) {
        document.getElementById(modalId).style.display = "block";
    }

    // Close modal when clicking the close button or outside the modal
    document.querySelectorAll('.modal .close-btn').forEach(btn => {
        btn.onclick = function() {
            this.closest('.modal').style.display = "none";
        }
    });

    window.onclick = function(event) {
        if (event.target.className === 'modal') {
            event.target.style.display = "none";
        }
    }

 

    function showAddProductForm() {
        alert('Add Product form will be displayed here');
        // Implement form display logic
    }

    // Logout functionality
    document.getElementById('logoutBtn').addEventListener('click', function(e) {
        e.preventDefault();
        if(confirm('Are you sure you want to logout?')) {
            // Implement logout logic
            window.location.href = 'adminlogin';
        }
    });

    </script>
</body>
</html>
