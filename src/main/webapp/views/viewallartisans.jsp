<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Artisans</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 1rem;
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #800020;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 2rem 0;
        }

        th, td {
            padding: 1rem;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #800020;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e6e6e6;
        }

        .actions button {
            padding: 0.5rem 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-edit {
            background-color: #4CAF50;
            color: white;
        }

        .btn-delete {
            background-color: #f44336;
            color: white;
        }

        #updateForm {
            display: none;
            padding: 1rem;
            background-color: #fff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-top: 2rem;
            border-radius: 8px;
        }

        #updateForm input {
            margin: 0.5rem 0;
            padding: 0.5rem;
            width: 100%;
        }

        #updateForm button {
            padding: 0.5rem 1rem;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>All Artisans</h1>
        <table id="artisanTable">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Password</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="artisan" items="${artisans}">
                    <tr id="artisan-${artisan.id}">
                        <td>${artisan.id}</td>
                        <td>${artisan.aname}</td>
                        <td>${artisan.amail}</td>
                        <td>${artisan.anumber}</td>
                        <td>
                            <div class="password-container">
                                <input type="password" value="${artisan.apwd}" readonly />
                                <i class="fas fa-eye toggle-password" onclick="togglePassword(this)"></i>
                            </div>
                        </td>
                        <td class="actions">
                            <button class="btn-edit" onclick="showUpdateForm('${artisan.id}', '${artisan.aname}', '${artisan.amail}', '${artisan.anumber}', '${artisan.apwd}')">Edit</button>
                            <button class="btn-delete" onclick="deleteArtisan('${artisan.id}')">Delete</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Update Artisan Form -->
        <div id="updateForm">
            <h2>Edit Artisan</h2>
            <input type="hidden" id="updateId">
            <input type="text" id="updateName" placeholder="Name">
            <input type="email" id="updateEmail" placeholder="Email">
            <input type="text" id="updatePhone" placeholder="Phone">
            <input type="password" id="updatePassword" placeholder="Password">
            <button onclick="updateArtisan()">Update</button>
            <button onclick="hideUpdateForm()">Cancel</button>
        </div>
    </div>

    <script>
    
    // Show the update form with pre-filled data
    function showUpdateForm(id, name, email, phone, password) {
        document.getElementById('updateId').value = id;
        document.getElementById('updateName').value = name;
        document.getElementById('updateEmail').value = email;
        document.getElementById('updatePhone').value = phone;
        document.getElementById('updatePassword').value = password;
        document.getElementById('updateForm').style.display = 'block'; // Show the update form
    }

    // Hide the update form
    function hideUpdateForm() {
        document.getElementById('updateForm').style.display = 'none'; // Hide the update form
    }

    // Function to update the artisan
    function updateArtisan() {
        const id = document.getElementById('updateId').value;
        const name = document.getElementById('updateName').value;
        const email = document.getElementById('updateEmail').value;
        const phone = document.getElementById('updatePhone').value;
        const password = document.getElementById('updatePassword').value;

        const artisanData = {
            id: parseInt(id),
            aname: name,
            amail: email,
            anumber: phone,
            apwd: password
        };

        const xhr = new XMLHttpRequest();
        xhr.open('POST', '/updateartisan', true);
        xhr.setRequestHeader('Content-Type', 'application/json');
        xhr.onload = function () {
            if (xhr.status === 200) {
                alert(xhr.responseText); // Show success message

                // Dynamically update the artisan row
                const artisanRow = document.getElementById('artisan-' + id);
                artisanRow.cells[1].textContent = name;
                artisanRow.cells[2].textContent = email;
                artisanRow.cells[3].textContent = phone;
                artisanRow.cells[4].querySelector('input').value = password;

                hideUpdateForm(); // Hide the update form
            } else {
                alert('Error updating artisan');
            }
        };

        xhr.send(JSON.stringify(artisanData));
    }

    // Function to delete the artisan
    function deleteArtisan(id) {
        if (confirm('Are you sure you want to delete this artisan?')) {
            const xhr = new XMLHttpRequest();
            xhr.open('POST', '/deleteartisan', true);
            xhr.setRequestHeader('Content-Type', 'application/json');
            xhr.onload = function () {
                if (xhr.status === 200) {
                    alert(xhr.responseText); // Show success message

                    // Remove the artisan row from the table
                    const artisanRow = document.getElementById('artisan-' + id);
                    artisanRow.remove();
                } else {
                    alert('Error deleting artisan');
                }
            };
            xhr.send(JSON.stringify({ id: parseInt(id) })); // Send id as an integer
        }
    }

    // Toggle password visibility
    function togglePassword(eyeIcon) {
        const passwordInput = eyeIcon.previousElementSibling;
        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            eyeIcon.classList.remove('fa-eye');
            eyeIcon.classList.add('fa-eye-slash');
        } else {
            passwordInput.type = 'password';
            eyeIcon.classList.remove('fa-eye-slash');
            eyeIcon.classList.add('fa-eye');
        }
    }


    </script>
</body>
</html>
