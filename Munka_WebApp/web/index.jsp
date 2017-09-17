<%-- 
    Document   : index
    Created on : Sep 16, 2017, 10:23:32 PM
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
  <title>Munka</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>

<body class="index-bg">
  <!-- Menu -->
  <%@include file="menu.jspf" %>
  <!-- End Menu -->

  <!-- Modal Login -->

  <!-- Modal Structure -->
  <div id="modal1" class="modal modal-fixed-footer">
    <div class="modal-content">

      <!-- Login Box -->
      <div class="z-depth-1 row box-all box-login">
        <div class="row">
          <div class="col s12">
            <a href="index.html"><img class="logo-login" src="images/logo_munka.png" alt="Munka Logo"></a>
          </div>
        </div>

        <form class="col s12" method="post">
          <div class='row'>
            <div class='col s12'>
            </div>
          </div>

          <div class='row'>
            <div class='input-field col s12'>
              <input class='validate' type='email' name='email' id='email'>
              <label for='email'>Email</label>
            </div>
          </div>

          <div class='row'>
            <div class='input-field col s12'>
              <input class='validate' type='password' name='password' id='password'>
              <label for='password'>Senha</label>
            </div>
          </div>

          <div class="row">
            <div class="remember-pass col s12">
              <input type="checkbox" id="remeber">
              <label for="remember">Lembrar senha</label>
            </div>
          </div>

          <br>
          <div class='row'>
            <button type='submit' name='btn-login' class='col s12 btn btn-large waves-effect'>Entrar</button>
          </div>
          <div class="row">
            <label><a class='pink-text' href='#!'><b>Esqueci minha senha?</b></a></label>
          </div>
          <div class="row">
            <hr>
            <label>Ainda não tem uma conta? <a class='pink-text' href='#!'><b>Criar Conta</b></a></label>
          </div>
        </form>
      </div>
      <!-- END Login Box -->
      
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Agree</a>
    </div>
  </div>
  <!-- END Modal Login -->

  <!-- Conteudo -->
  <!-- Banner -->
  <div class="banner-row">
    <div class="container">
      <div class="row">
        <div class="col s12">
          <h5 class="center">"Nunca foi tão fácil <br> cuidar do que é nosso."</h5>
        </div>
      </div>
    </div>
  </div>
  <!-- END Banner -->

  <!-- Sobre -->
  <div class="sobre-row">
    <div class="container">
      <div class="row">
        <div class="col s12">
          <h2 class="center">Sobre</h2>
        </div>
        <div class="col s12">
          <p class="center">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec orci dui, volutpat nec nibh id, ultrices eleifend ligula.
            Quisque vel sem non nibh mattis condimentum.
          </p>
        </div>
      </div>
    </div>
  </div>
  <!-- END Sobre -->

  <!-- Servico -->
  <div class="servico-bg">
    <div class="container">
      <div class="row">

        <div class="col s12">
          <h2 class="center">Nosso Serviço</h2>
        </div>

        <div class="col s4">
          <div class="icon-block">
            <h3 class="center blue-text"><img src="#!" alt="gps" class="img_icon_main"></h3>
            <h5 class="center">ESTAMOS SEMPRE <br> PERTO DE VOCÊ</h5>

            <p class="light">We have provided detailed documentation as well as specific code examples to help new users get started. We are
            also always open to feedback and can answer any questions a user may have about Materialize.</p>
          </div>
        </div>

        <div class="col s4">
          <div class="icon-block">
            <h3 class="center blue-text"><img src="#!" alt="gps" class="img_icon_main"></h3>
            <h5 class="center">ESTAMOS SEMPRE <br> PERTO DE VOCÊ</h5>

            <p class="light">We have provided detailed documentation as well as specific code examples to help new users get started. We are
            also always open to feedback and can answer any questions a user may have about Materialize.</p>
          </div>
        </div>

        <div class="col s4">
          <div class="icon-block">
            <h3 class="center blue-text"><img src="#!" alt="gps" class="img_icon_main"></h3>
            <h5 class="center">ESTAMOS SEMPRE <br> PERTO DE VOCÊ</h5>

            <p class="light">We have provided detailed documentation as well as specific code examples to help new users get started. We are
            also always open to feedback and can answer any questions a user may have about Materialize.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- END Servico -->

  <!-- Cadastrar -->
  <div class="cadastrar-bg">
    <div class="container">
      <div class="row">
        <div class="col s12">
          <h2 class="center"><a class="waves-effect waves-light btn-large cadastrar-btn" href="cadastro.html">Cadastrar</a></h2>
          <!-- ToDo: href -->
        </div>
      </div>
    </div>
  </div>
  <!-- END Cadastrar -->
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
