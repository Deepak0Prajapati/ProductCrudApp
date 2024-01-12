<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>

	<div class="row">

		<div class="col-md-6 offset-md-3">
			<h1 class="text-center mb-3">Change product Details</h1>

			<form action="${pageContext.request.contextPath}/handle-product" method="post">
			<input type="hidden" value="${product.id}" name="id" />
				<div class="form-group">
					<label for="Name">Product Name</label> <input type="text"
						class="form-control" id="name" aria-describedby="emailHelp"
						name="name" placeholder="Enter product name here" value="${product.name}">
				</div>
				<div class="form-group">
					<label for="Description">Product description</label> <textarea
						class="form-control" name="description" id="description" rows="5"
						placeholder="Enter product description">${product.description}</textarea>
				</div>
				<div class="form-group">
				<label for="price">Product Price</label>
					<input type="text" class="form-control" name="price" id="price" value="${product.price}">
				
				</div>
				
				<div class="container text-center">
					<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
					<button type="submit" class="btn btn-warning">Update</button>
				</div>
				
			</form>


		</div>

	</div>

</body>
</html>