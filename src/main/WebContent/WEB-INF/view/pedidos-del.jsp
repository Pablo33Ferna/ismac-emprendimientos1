<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<h1>Borrar Pedido</h1>
	
	<form action="del" method="GET">
	<input type="hidden" id="idPedido" name="idPedido" value="${pedido.idPedido}">
	<strong>¿Desea eliminar el dato?</strong>
	<br/><br/>
	<button type="submit">Eliminar</button>
	<button type="button" onclick="window.location.href='/ismac-emprendimientos1-web/pedidos/findAll';return false;">Cancelar</button>
	</form>
 
</body>
</html>