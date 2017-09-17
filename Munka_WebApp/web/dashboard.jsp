<%-- 
    Document   : dashboard
    Created on : Sep 16, 2017, 10:23:16 PM
    Author     : fabiomarquesim
--%>

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
  <!-- Menu -->
  <%@include file="menu.jspf" %>
  <!-- End Menu -->

  <!-- Conteudo -->
  <div class="dash-table">

    <!-- Filtros -->
    <div class="container center">
      <div class="row">
        <div class="form" method="post">
          <div class="input-field col s6">
            <select>
              <option value="" disabled selected>Choose your option</option>
              <option value="1">Option 1</option>
              <option value="2">Option 2</option>
              <option value="3">Option 3</option>
            </select>
            <label>Categoria</label>
          </div>

          <div class="input-field col s6">
            <select>
              <option value="" disabled selected>Choose your option</option>
              <option value="1">Option 1</option>
              <option value="2">Option 2</option>
              <option value="3">Option 3</option>
            </select>
            <label>Status</label>
          </div>
        </div>
      </div>
    </div>
    <!-- END Filtros -->

    <!-- Tabela de Posts -->
    <!-- Sub Menu 2 -->
    <div class="container center light blue dash-sub">
      <div class="row">
        <div class="col s6 selected-sub">
          <a class="waves-effect waves-teal btn-flat">Todos os Posts</a>
        </div>

        <div class="col s6">
          <a class="waves-effect waves-teal btn-flat">Meus os Posts</a>
        </div>
      </div>
    </div>
    <!-- END Sub Menu 2 -->
    <div class="container center">
      <table class="striped centered responsive-table">
        <thead>
          <tr>
            <th>Título</th>
            <th>Categoria</th>
            <th>Status</th>
            <th>Alterar</th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <td>Alvin</td>
            <td>Eclair</td>
            <td>Resolvido</td>
            <td><a href="#!"><i class="material-icons">create</i></a></td>
          </tr>
          <tr>
            <td>Alan</td>
            <td>Jellybean</td>
            <td>Processando</td>
            <td><a href="#!"><i class="material-icons">create</i></a></td>
          </tr>
          <tr>
            <td>Jonathan</td>
            <td>Lollipop</td>
            <td>Processando</td>
            <td><a href="#!"><i class="material-icons">create</i></a></td>
          </tr>
        </tbody>
      </table>
    </div>  
    <!-- END Tabela de Posts -->
  </div>
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
