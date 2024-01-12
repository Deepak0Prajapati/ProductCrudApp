<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false"%>
<html>
<head>
    <%@include file="./base.jsp" %>

    <style>
        body {
            background: linear-gradient(to bottom right, #ff758c, #ff7eb3, #9e57ff, #5f5fe1, #71c9f8);
            color: #ffffff;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        h1 {
            font-size: 3rem;
            color: #2c3e50;
        }

        table {
            background-color: rgba(255, 255, 255, 0.8);
            color: #2c3e50;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        th, td {
            text-align: center;
        }

        a {
            text-decoration: none;
            color: #3498db;
        }

        .fa-trash-can,
        .fa-pen-nib {
            transition: transform 0.3s ease-in-out;
        }

        .fa-trash-can:hover,
        .fa-pen-nib:hover {
            transform: scale(1.2);
        }

        .btn-add-product {
            background: linear-gradient(to right, #fd746c, #ff9068);
            color: #ffffff;
            border: none;
            padding: 15px 30px;
            font-size: 1.2rem;
            border-radius: 10px;
            text-decoration: none;
            transition: background 0.3s ease-in-out;
        }

        .btn-add-product:hover {
            background: linear-gradient(to right, #ff4382, #ffce56);
        }
    </style>
</head>
<body>

<div class="container mt-3">
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center mb-3">Welcome to Product Handler</h1>

            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">S.ID</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Product Description</th>
                    <th scope="col">Product Price</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${products}" var="p">
                    <tr>
                        <th scope="row">S.ID${p.id}</th>
                        <td>${p.name}</td>
                        <td>${p.description}</td>
                        <td> &#x20B9;${p.price}</td>
                        <td>
                            <a href="delete/${p.id}">
                                <i class="fa-solid fa-trash-can text-danger" style="font-size: 25px;"></i>
                            </a>
                            <a href="update/${p.id}">
                                <i class="fa-solid fa-pen-nib" style="font-size: 25px;"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <div class="container text-center">
                <a href="addproduct" class="btn btn-add-product">Add Product</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
