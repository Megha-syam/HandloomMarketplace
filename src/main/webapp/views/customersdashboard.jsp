<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Handloom Marketplace</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <style>
        :root {
            --primary-color: #4CAF50;
            --secondary-color: #FF9800;
            --background-color: #f4f4f4;
            --text-color: #333;
            --card-shadow: rgba(0, 0, 0, 0.1);
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--background-color);
            margin: 0;
            padding: 0;
            color: var(--text-color);
        }

        header {
            background-color: var(--primary-color);
            color: white;
            padding: 1rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 6px var(--card-shadow);
        }

        header h1 {
            font-size: 1.5rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        header nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            gap: 1rem;
        }

        header nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s;
        }

        header nav ul li a:hover {
            color: var(--secondary-color);
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            padding: 2rem;
        }

        .product-card {
            background: white;
            padding: 1rem;
            border-radius: 10px;
            box-shadow: 0 4px 6px var(--card-shadow);
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 12px var(--card-shadow);
        }

        .product-card img {
            max-width: 100%;
            border-radius: 10px;
            margin-bottom: 1rem;
        }

        .product-actions button {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            cursor: pointer;
            margin: 0.5rem;
            transition: background 0.3s;
        }

        .product-actions button:hover {
            background-color: var(--secondary-color);
        }

        #cart-modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 1000;
            overflow: auto;
        }

        .cart-content {
            background: white;
            margin: 5% auto;
            padding: 2rem;
            border-radius: 10px;
            width: 80%;
            max-width: 600px;
            position: relative;
        }

        .close-modal {
            color: #aaa;
            float: right;
            font-size: 1.5rem;
            font-weight: bold;
            cursor: pointer;
        }

        .close-modal:hover {
            color: black;
        }

        #cart-items {
            margin-top: 1rem;
        }.toast {
            visibility: hidden;
            max-width: 50%;
            margin: auto;
            background-color: #4CAF50;
            color: white;
            text-align: center;
            border-radius: 5px;
            padding: 1rem;
            position: fixed;
            z-index: 1001;
            left: 50%;
            top: 1rem;
            transform: translateX(-50%);
            box-shadow: 0 4px 6px var(--card-shadow);
        }

        .toast.show {
            visibility: visible;
            animation: fadeInOut 3s;
        }

        @keyframes fadeInOut {
            0%, 100% { opacity: 0; }
            50% { opacity: 1; }
        }

        .checkout-btn {
            background-color: var(--secondary-color);
            color: white;
            padding: 0.75rem 1.5rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 1rem;
            width: 100%;
            font-size: 1.1rem;
            transition: background 0.3s;
        }

        .checkout-btn:hover {
            background-color: var(--primary-color);
        }

        @media (max-width: 768px) {
            .product-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="header-content">
            <h1><i class="fas fa-shopping-bag"></i> Handloom Marketplace</h1>
            <nav>
                <ul>
                    <li><a href="#" onclick="openCart()"><i class="fas fa-shopping-cart"></i> Cart</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <div id="product-grid" class="product-grid">
            <div class="product-card">
                <img src="https://www.treasuresofkashmir.in/cdn/shop/products/Crimson-Red-Kani-Paldar-Handwoven-Cashmere-Pashmina-Shawl_1024x1024.jpg?v=1606239980" alt="Handwoven Pashmina Shawl">
                <h4>Handwoven Pashmina Shawl</h4>
                <p>Luxurious hand-spun pashmina with intricate traditional weaving</p>
                <p>249.99</p>
                <div class="product-actions">
                    <button onclick="addToCart(1)"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <img src="https://bongoniketan.in/cdn/shop/files/handembroideredKanthastoleandkanthadupattainpuresilkbybongoniketanWestBengal8_1024x1024.jpg?v=1692703933" alt="Kantha Embroidered Silk Stole">
                <h4>Kantha Embroidered Silk Stole</h4>
                <p>Vibrant hand-embroidered silk stole with traditional Kantha work</p>
                <p>179.99</p>
                <div class="product-actions">
                    <button onclick="addToCart(2)"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                </div>
            </div>
        </div>
    </main>

    <!-- Cart Modal -->
    <div id="cart-modal">
        <div class="cart-content">
            <span class="close-modal" onclick="closeCart()">&times;</span>
            <h2>Your Cart</h2>
            <div id="cart-items"></div>
            <div id="cart-total">
                <strong>Total: $<span id="total-price">0.00</span></strong>
            </div>
            <button class="checkout-btn" onclick="proceedToCheckout()">Proceed to Checkout</button>
        </div>
    </div>

    <div id="toast" class="toast"></div>

    <script>
        const products = [
            { id: 1, name: "Handwoven Pashmina Shawl", price: 249.99 },
            { id: 2, name: "Kantha Embroidered Silk Stole", price: 179.99 }
        ];

        let cart = [];

        function addToCart(productId) {
            const product = products.find(p => p.id === productId);
            const existingProduct = cart.find(item => item.id === productId);

            if (existingProduct) {
                existingProduct.quantity++;
            } else {
                cart.push({ ...product, quantity: 1 });
            }showToast(`${product.name} added to cart`);
            updateCartDisplay();
        }

        function updateCartDisplay() {
            const cartItemsContainer = document.getElementById('cart-items');
            const totalPriceSpan = document.getElementById('total-price');

            if (cart.length === 0) {
                cartItemsContainer.innerHTML = 'Your cart is empty';
            } else {
                cartItemsContainer.innerHTML = cart.map(item => `
                    <p>${item.name} - $${item.price} x ${item.quantity}</p>
                `).join('');
            }

            const total = cart.reduce((sum, item) => sum + item.price * item.quantity, 0);
            totalPriceSpan.textContent = total.toFixed(2);
        }

        function showToast(message) {
            const toast = document.getElementById('toast');
            toast.textContent = message;
            toast.classList.add('show');
            setTimeout(() => toast.classList.remove('show'), 3000);
        }

        function openCart() {
            document.getElementById('cart-modal').style.display = 'block';
        }

        function closeCart() {
            document.getElementById('cart-modal').style.display = 'none';
        }

        function proceedToCheckout() {
            const total = cart.reduce((sum, item) => sum + item.price * item.quantity, 0);
            const options = {
                key: 'YOUR_RAZORPAY_KEY_ID', // Replace with your actual Razorpay key
                amount: total * 100, // Amount in paise (Razorpay expects amount in smallest currency unit)
                currency: 'INR',
                name: 'Handloom Marketplace',
                description: 'Purchase of handloom products',
                image: 'your-logo-url.png', // Replace with your logo URL
                handler: function(response) {
                    // Handle successful payment
                    alert('Payment successful! Payment ID: ' + response.razorpay_payment_id);
                    // Clear cart and close modal
                    cart = [];
                    updateCartDisplay();
                    closeCart();
                },
                prefill: {
                    name: 'syam', // Can be populated with user's name if available
                    email: 'syam@gmail.com', // Can be populated with user's email if available
                    contact: '9632587412' // Can be populated with user's phone if available
                },
                theme: {
                    color: '#4CAF50'
                }
            };

            const rzp = new Razorpay(options);
            rzp.open();
        }
    </script>
</body>
</html>
