<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<!-- <meta charset="ISO-8859-1"> -->
	<meta charset="utf-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
	
</head>
<body>

	<nav>
		<h1> Emprendimientos  </h1>
		<div class="lista">
			<ul style="display: inline;"><a href="${pageContext.request.contextPath}/"> HOME</a></ul>
			<ul style="display: inline;"><a href="${pageContext.request.contextPath}/pedidos/findAll">Pedidos</a></ul>
			<ul style="display: inline;"><a href="${pageContext.request.contextPath}/formaPagos/findAll">Formas Pago</a></ul>
		</div>
	</nav>
	
	<section>
		
		<p> Aqui viene información general del negocio </p>
		<p> Aqui viene información general del negocio </p>
		<p> Aqui viene información general del negocio </p>
		
		<div>
			<iframe title="CasoBasePedidos" width="1140" height="541.25" src="https://app.powerbi.com/reportEmbed?reportId=05d1c76d-83c6-4d33-8e3e-52eb512f3228&autoAuth=true&ctid=5489579d-44b5-4792-af49-e9be4633a3d5" frameborder="0" allowFullScreen="true"></iframe>
		</div>	
	</nav>
	</section>
	<footer>
		<div style="text-align: center"><p> Copyright &copy; Empresa ABC S.A. - 2024 Todos los derechos reservados.</p></div>
	</footer>

	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>		
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script>
		
	</script>
</body>
</html>