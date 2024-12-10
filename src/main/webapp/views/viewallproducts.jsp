<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Products</title>
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
        <h1>All Products</h1>
        <table id="productTable">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${productList}">
                    <tr id="product-${product.pid}">
                        <td>${product.pid}</td>
                        <td>${product.pname}</td>
                        <td>${product.pdescription}</td>
                        <td>${product.pcost}</td>
                        <td class="actions">
                            <button class="btn-edit" onclick="showUpdateForm('${product.pid}', '${product.pname}', '${product.pdescription}', '${product.pcost}')">Edit</button>
                            <button class="btn-delete" onclick="deleteProduct('${product.pid}')">Delete</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Update Product Form -->
        <div id="updateForm">
            <h2>Edit Product</h2>
            <input type="hidden" id="updatePid">
            <input type="text" id="updatePname" placeholder="Product Name">
            <input type="text" id="updatePdescription" placeholder="Description">
            <input type="number" id="updatePcost" placeholder="Price">
            <button onclick="updateProduct()">Update</button>
            <button onclick="hideUpdateForm()">Cancel</button>
        </div>
    </div>

    <script>
    // Show the update form with pre-filled data
    function showUpdateForm(pid, pname, pdescription, pcost) {
        document.getElementById('updatePid').value = pid;
        document.getElementById('updatePname').value = pname;
        document.getElementById('updatePdescription').value = pdescription;
        document.getElementById('updatePcost').value = pcost;
        document.getElementById('updateForm').style.display = 'block'; // Show the update form
    }

    // Hide the update form
    function hideUpdateForm() {
        document.getElementById('updateForm').style.display = 'none'; // Hide the update form
    }

    // Function to update the product
    function updateProduct() {
        const pid = document.getElementById('updatePid').value;
        const pname = document.getElementById('updatePname').value;
        const pdescription = document.getElementById('updatePdescription').value;
        const pcost = document.getElementById('updatePcost').value;

        const productData = {
            pid: parseInt(pid),  // Ensure pid is an integer
            pname: pname,
            pdescription: pdescription,
            pcost: parseFloat(pcost)  // Ensure pcost is a float
        };

        const xhr = new XMLHttpRequest();
        xhr.open('POST', '/updateproduct', true);
        xhr.setRequestHeader('Content-Type', 'application/json');
        xhr.onload = function () {
            if (xhr.status === 200) {
                alert(xhr.responseText); // Show success message
                location.reload(); // Reload page to reflect changes
            } else {
                alert('Error updating product');
            }
        };
        xhr.send(JSON.stringify(productData));
    }

    // Function to delete the product
    function deleteProduct(pid) {
        if (confirm('Are you sure you want to delete this product?')) {
            const xhr = new XMLHttpRequest();
            xhr.open('POST', '/deleteproduct', true);
            xhr.setRequestHeader('Content-Type', 'application/json');
            xhr.onload = function () {
                if (xhr.status === 200) {
                    alert(xhr.responseText); // Show success message
                    location.reload(); // Reload page to reflect changes
                } else {
                    alert('Error deleting product');
                }
            };
            xhr.send(JSON.stringify({ pid: parseInt(pid) })); // Send pid as an integer
        }
    }

    </script>
</body>
</html>
