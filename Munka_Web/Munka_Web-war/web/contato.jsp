<%-- 
    Document   : contato
    Created on : Sep 16, 2017, 10:22:13 PM
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
  <title>Contato - Munka</title>
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
  <!-- Contato Box -->
  <div class="container center">
    <div class="z-depth-1 row box-all">
      <div class="row">
        <div class="col s12">
          <h1>Contato</h1>
        </div>
      </div>

      <div class='row'>
        <div class='col s12'>
          <p>PARA QUALQUER DUVIDA ENVIE UMA MENSAGEM PARA <br> A NOSSA CENTRAL DE ATENDIMENTOS</p>
        </div>
      </div>

      <form class="col s12" method="post">
        <div class='row'>
          <div class='col s12'></div>
        </div>

        <div class="row">
          <div class="input-field col s12">
            <input id="first_name" type="text" class="validate" name="first_name">
            <label for="first_name">Nome</label>
          </div>
        </div>

        <div class='row'>
          <div class='input-field col s12'>
            <input class='validate' type='email' name='email' id='email'>
            <label for='email'>Email</label>
          </div>
        </div>

        <div class='row'>
          <div class="input-field col s12">
            <textarea id="mensagem1" class="materialize-textarea"></textarea>
            <label for="mensagem1">Mensagem</label>
          </div>
        </div>

        <br>
        <div class='row'>
        <button type='submit' name='btn-contato' class='col s12 btn btn-large waves-effect'>Enviar</button>
        </div>
      </form>
    </div>
  </div>
  <!-- FIM Contato Box -->
  <!-- END Conteudo -->

  <!-- Footer -->
  <%@include file="footer.jspf" %>
  <!-- END Footer -->

  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/materialize.js"></script>
  <script type="text/javascript" src="js/init.js"></script>
</body>

</html>
