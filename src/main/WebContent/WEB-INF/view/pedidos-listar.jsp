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
	<h1>Pedidos</h1>
	
	<br>
	<button> <a href="${pageContext.request.contextPath}/pedidos/findOne?opcion=1"> Agregar </a></button>
					<br>
	<table>
		<thead>
	
			<tr>
				<th>idPedido</th>
				<th>numPedido</th>				
				<th>fechapedido</th>
				<th>confirmacionPedido</th>
			
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${pedidos}">
			<tr>
				<td>${item.idPedido}</td>
				<td>${item.numPedido}</td>				
				<td>${item.fechapedido}</td>
				<td>${item.confirmacionPedido}</td>
				<td>
					<button> <a href="${pageContext.request.contextPath}/pedidos/findOne?idPedido=${item.idPedido}&opcion=1"> Actualizar </a></button>
					<button> <a href="${pageContext.request.contextPath}/pedidos/findOne?idPedido=${item.idPedido}&opcion=2"> Eliminar </a></button>
					
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>