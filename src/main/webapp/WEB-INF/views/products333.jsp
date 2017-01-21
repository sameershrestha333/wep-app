<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product list</title>
</head>
<body>
	<table>
		<thead>
			<tr class="bg-info">
			    <th>Product Id</th>
			    <th>Name</th>
                <th>Unit Price</th>
                <th>Description</th>
                <th>Manufacture</th>
                <th>Condition</th>
<!--                  <th>Unit in Order</th>
 -->                <th>Unit in Stock</th>
                
            </tr>

		</thead>
		<tbody>

			<c:forEach items="${products}" var="product">
				<tr>
					<td>${ product.productId}</td>
				
						<td>${ product.name}</td>
						<td>${ product.unitPrice}</td>
						<td>${ product.description}</td>
				    	<td>${ product.manufacturer}</td>
					    <td>${ product.condition}</td>
<%-- 					    <td>${ product.unitsInOrder}</td>
 --%>					    <td>${ product.unitsInStock}</td>
						
				</tr>
			</c:forEach>

		</tbody>
	</table>

</body>
</html>