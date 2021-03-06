<%-- 
    Document   : cadastro
    Created on : Sep 16, 2017, 10:21:56 PM
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
        <title>Cadastro - Munka</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>

    <body>
        <c:if test="${user!=null}">     
            <c:redirect url="index.jsp"></c:redirect>
        </c:if>
        <!-- Menu -->
        <%@include file="menu.jspf" %>
        <!-- End Menu -->

        <!-- Message Error Start -->
        <c:if test="${error!=null}">
            <script type="text/javascript">
                window.onload = function () {
                    Materialize.toast('${error}', 50000);
                };
            </script>
        </c:if>
        <!-- Message Error Ends -->

        <!-- Conteudo -->
        <!-- Cadastro Box -->
        <div class="container center">
            <div class="z-depth-1 row box-all">
                <div class="row">
                    <div class="col s12">
                        <h1>Cadastro</h1>
                    </div>
                </div>

                <form class="col s12" method="post" action="Controller">
                    <div class='row'>
                        <div class='col s12'></div>
                    </div>

                    <div class="row">
                        <div class="input-field col s12">
                            <input id="nome" type="text" class="validate" name="nome">
                            <label for="nome">Nome</label>
                        </div>
                    </div>

                    <div class='row'>
                        <div class='input-field col s12'>
                            <input class='email validate' type='email' name='email' id='email1'>
                            <label for='email1' data-error="wrong" data-success="right">Email</label>
                        </div>
                    </div>
                    
                    <div class='row'>
                        <div class='input-field col s12'>
                            <input class='email validate' type='email' name='email2' id='email2'>
                            <label for='email2' data-error="wrong" data-success="right">Confirmar Email</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col s12">
                            <input id="empresa_ass" type="text" class="validate" name="empresa_ass">
                            <label for="empresa_ass">Empresa Associada</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col s12">
                            <input id="telefone" type="text" class="validate" name="telefone">
                            <label for="telefone">Telefone</label>
                        </div>
                    </div>

                    <div class='row'>
                        <div class='input-field col s12'>
                            <input class='validate' type='password' name='password' id='password'>
                            <label for='password'>Senha</label>
                        </div>
                    </div>

                    <div class='row'>
                        <div class='input-field col s12'>
                            <input class='validate' type='password' name='password2' id='password2'>
                            <label for='password2'>Confirmar Senha</label>
                        </div>
                    </div>

                    <br>
                    <div class='row'>
                        <input type="hidden" name="command" value="Usuario.register" />
                        <button type='submit' name='btn-cadastro' class='col s12 btn btn-large waves-effect'>Cadastrar</button>
                    </div>
                </form>
            </div>
            <div class="input-group-login">
                <label class="alredy_account">Já sou cadastrado? <a href="login.jsp">Login</a></label>
            </div>
        </div>
        <!-- FIM Cadastro Box -->
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