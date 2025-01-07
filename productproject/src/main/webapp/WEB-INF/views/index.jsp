<html>
<head>
<%@include file="./base.jsp"%>
</head>
<body>

	<div class="container mt-3" style="max-width: 90%; margin: 0 auto;">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Product App</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Serial No</th>
							<th scope="col">Product Name</th>
							<th scope="col">Product Description</th>
							<th scope="col">Price</th>
							<th scoper="col"> Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products }" var="p">
						<tr>
							<th scope="row">${p.id }</th>
							<td>${p.name }</td>
							<td>${p.description }</td>
							<td>&#8377;${p.price }</td>
							<td><a href="${pageContext.request.contextPath}/delete/${p.id }"><i class="fa-solid fa-trash-can text-danger"></i></a> &nbsp; | &nbsp;
							<a href="${pageContext.request.contextPath}/update/${p.id }"><i class="fa-regular fa-pen-to-square text-primary"></i></a></td>
						</tr></c:forEach>
					</tbody>
				</table>
				<div class="container text-center mt-5">
				<a href="${pageContext.request.contextPath}/addProduct" class="btn btn-outline-success">Add new product</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
