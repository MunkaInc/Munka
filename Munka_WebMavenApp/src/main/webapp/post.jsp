<%-- 
    Document   : post
    Created on : Sep 16, 2017, 10:18:36 PM
    Author     : fabiomarquesim
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
	<!--Import Google Icon Font-->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<!--Import CSS-->
	<link type="text/css" rel="stylesheet" href="css/materialize.css" media="screen,projection" />
	<Link type="text/css" rel="stylesheet" href="css/style.css" media="screen,projection" />

	<!--Let browser know website is optimized for mobile-->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!-- Basic Head Information -->
	<title>Admin Posts - Munka</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>

<body>
    <c:if test="${user==null}">     
            <c:redirect url="index.jsp"></c:redirect>
    </c:if>
	<!-- Menu -->
	<%@include file="menu.jspf" %>
	<!-- End Menu -->

	<!-- Conteudo -->
	<div class="container center">
		<!-- Titulo do post -->
		<div class="row">
			<div class="col s8">
				<p>Título: Pintura com defeito na Portaria</p>	
			</div>

			<div class="col s4">
				<p>Status: RESOLVIDO</p>
			</div>

		</div>
		<!-- END Titulo do post -->

		<!-- Conteudo do Post -->
		<div class="row">
			<div class="col s4">
				<p>IMAGEM</p>
			</div>

			<div class="col s8">
				<p>Categoria: Manutenção</p>
				<p>Descrição: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
			</div>
		</div>
		<!-- END Conteudo do Post -->
	</div>
	<!-- END Conteudo -->

	<!-- Footer -->
	<%@include file="footer.jspf" %>
	<!-- END Footer -->

	<!--Import jQuery before materialize.js-->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.js"></script>
	<script type="text/javascript" src="js/init.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.0/Chart.bundle.js"></script>
</body>

</html>
