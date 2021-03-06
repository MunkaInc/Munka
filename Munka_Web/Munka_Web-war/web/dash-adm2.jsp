<%-- 
    Document   : dash-adm2
    Created on : Sep 16, 2017, 10:22:52 PM
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
	<!-- Sub Menu -->
	<div class="dash-table">
		<div class="container center light blue dash-sub">
			<div class="row">
				<div class="col s6">
					<a href="dash-adm.jsp" class="waves-effect waves-teal btn-flat">Posts</a>
				</div>

				<div class="col s6 selected-sub">
					<a href="#!" class="waves-effect waves-teal btn-flat">Analytics</a>
				</div>
			</div>
		</div>
		<!-- END Sub Menu -->

		<!-- Graficos -->
		<div class="container center">
			<div class="row">
				<!-- Grafico 1 -->
				<!-- http://www.chartjs.org/docs/latest/ -->
				<div class="col s12">
					<h2>Gráfico 1</h2>
					<img src="images/exemplo1.png">
				</div>
				<!-- END Grafico 1 -->

				<!-- Grafico 2 -->
				<div class="col s12">
					<h2>Gráfico 2</h2>
					<img src="images/exemplo2.png">
				</div>
				<!-- END Grafico 2 -->
			</div>
			<!-- END Graficos -->
		</div>
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
