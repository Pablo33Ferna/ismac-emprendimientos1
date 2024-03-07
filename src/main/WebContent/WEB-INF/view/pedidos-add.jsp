<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Pedidos</h1>
	<form action="add" method="POST">
 idPedido
 <input type="hidden" id="idPedido" name="idPedido" value="${pedido.idPedido}">
 <br/><br/>
 numPedido
 <input type="text" id="numPedido" name="numPedido" value="${pedido.numPedido}">
 <br/><br/>
 fechapedido
 <input type="date" id="fechapedido" name="fechapedido" value="${fn:substring(pedido.fechapedido,0,10)}">
	 <br/><br/>
  confirmacionPedido
 <input type="number" id="confirmacionPedido" name="confirmacionPedido" value="${pedido.confirmacionPedido}">
 <br/><br/>

 <button type="submit">Guardar</button>
 <button type="button" onclick="window.location.href='/ismac-emprendimientos1-web/pedidos/findAll';return false;">Cancelar</button>
	</form>

</body>
</html>