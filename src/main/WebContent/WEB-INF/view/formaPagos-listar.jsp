<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h1>FORMA PAGOS</h1>
	
	<br>
	<button> <a href="${pageContext.request.contextPath}/formaPagos/findOne?idFormaPago=&opcion=1"> Agregar </a></button>
					<br>
	<table>
		<thead>
	
			<tr>
				<th>idFormaPago</th>
				<th>formaspago</th>				
				<th>descripcion</th>
			
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${formaPagos}">
			<tr>
				<td>${item.idFormaPago}</td>
				<td>${item.formaspago}</td>				
				<td>${item.descripcion}</td>
			
				<td>
					<button> <a href="${pageContext.request.contextPath}/formaPagos/findOne?idFormaPago=${item.idFormaPago}&opcion=1"> Actualizar </a></button>
					<button> <a href="${pageContext.request.contextPath}/formaPagos/findOne?idFormaPago=${item.idFormaPago}&opcion=2"> Eliminar </a></button>
					
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>