<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>
</head>
<body>
<div class="container mt-3" style="max-width: 90%; margin: 0 auto;">
		
		<div class="row">
			
			<div class="col-md-6 offset-md-3">
				
				<h1 class="text-center mb-3">Fill the product detail</h1>
				
				<form action="handle-product" method="post">
					
					<div class="form-group">
						<label for="name">Product Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" placeholder="Enter the product name here">
					</div>

					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea class="form-control" name="description" id="description"
							rows="5" placeholder="Enter the product description"></textarea>
					</div>

					<div class="form-group">
						<label for="price">Product Price</label> <input type="text"
							placeholder="Enter Product Price" name="price"
							class="form-control" id="price">
					</div>
					
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>&nbsp;  &nbsp;
						<button type="submit" class="btn btn-outline-success">Add</button>
					</div>
					
				</form>
			</div>
		</div>
	</div>


</body>
</html>