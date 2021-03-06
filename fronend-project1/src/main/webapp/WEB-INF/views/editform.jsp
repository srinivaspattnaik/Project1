<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0.1 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EditForm</title>
</head>
<body>
	<c:url value="/admin/product/editproduct" var="url"></c:url>
	<form:form action="${url }" modelAttribute="productObj"enctype="multipart/formdata">
		<div class="form-group">
			<form:hidden path="id" class="form-control" />

		</div>
		<div class="form-group">
			Enter Product Name:
			<form:input path="productName" class="form-control" />
			<form:errors path="productName" cssStyle="color:red"></form:errors>
		</div>
		<br>
		<div class="form-group">
			Enter price:
			<form:input path="price" class="form-control" />
			<form:errors path="price" cssStyle="color:red"></form:errors>
		</div>
		<br>
		<div class="form-group">
			Enter Quantity
			<form:input path="quantity" clas="form-control" />
			<form:errors path="quantity" cssStyle="color:red"></form:errors>
		</div>
		<br>
		<div class="form-group">
			Enter Description
			<form:textarea path="description" class="form-control" />
			<form:errors path="description" cssStyle="color:red"></form:errors>
		</div>
		<br>
		<div class="form-group">
			Select Category
			<c:forEach items="${categories}" var="c">
				<form:radiobutton path="category.id" value="${c.id}" />${categoryName}
</c:forEach>
		</div>
		<div class="form-group">
		Upload an image
		<input type="file" name="image">
		</div>
		<div class="form-group">
			<input type="submit" value="Edit Product">
		</div>
		

	</form:form>

</body>
<%@include file="footer.jsp"%>
</html>