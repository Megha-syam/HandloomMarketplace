<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Handloom Global Fashion - Artisan Registration</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
        }

        /* Container Styling */
        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        /* Form Styling */
        .register-form {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        .register-form h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .input-group {
            margin-bottom: 15px;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
        }

        .register-btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        .register-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="register-form">
            <h2>Join Threads of Tradition - Artisan Details</h2>
            <form action="insertartisan1" method="post" onsubmit="return validateForm()">
                <div class="input-group">
                    <input type="text" name="aname" placeholder="Artisan Username" required>
                </div>
                <div class="input-group">
                    <input type="email" name="amail" placeholder="Artisan Email" required>
                </div>
                <div class="input-group">
                    <input type="password" id="apwd" name="apwd" placeholder="Artisan Password" required>
                </div>
                <div class="input-group">
                    <input type="password" id="acpwd" name="acpwd" placeholder="Confirm Password" required>
                </div>
                <div class="input-group">
                    <input type="text" id="anumber" name="anumber" placeholder="Artisan Mobile Number" required>
                </div>
                <button type="submit" class="register-btn">Register</button>
            </form>
        </div>
    </div>

    <script>
        function validateForm() {
            const password = document.getElementById("apwd").value;
            const confirmPassword = document.getElementById("acpwd").value;
            const phoneNumber = document.getElementById("anumber").value;

            // Password validation criteria
            const passwordRegex = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

            if (!passwordRegex.test(password)) {
                alert("Password must have at least 8 characters, include at least one uppercase letter, one lowercase letter, one digit, and one special character.");
                return false;
            }

            if (password !== confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }

            // Phone number validation (10 digits, no spaces or special characters)
            const phoneRegex = /^\d{10}$/;
            if (!phoneRegex.test(phoneNumber)) {
                alert("Phone number must be exactly 10 digits (numbers only).");
                return false;
            }

            return true;
        }
    </script>
</body>
</html>