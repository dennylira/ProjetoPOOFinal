<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="resources/bootstrap/js/jquery-1.11.1.min.js" type="text/javascript"></script>
        <script src="resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <title>Home</title>
    </head>
    <body>

        <% if ((session.getAttribute("username-l") == null) || (session.getAttribute("username-l") == "")) { %>
        <div class="container" style="margin-top:50px">
            <div class="alert alert-danger" role="alert" style="text-align:center">ATENÇÃO: Você não está logado! <b><a href="login.jsp">Clique aqui para fazer login</a></b>.</div>
        </div>
        <%} else { %>
            <%@ include file="WEB-INF/jspf/header.jspf" %>
            
            <div class="container">
                <div class="jumbotron">
                    <h1>Projeto 06 POO - WebQuiz</h1>
                    <p class="lead">Este projeto consiste em uma aplicação WEB de um QUIZ com controle de acesso, ranking de notas, histórico de testes e manutenção de perfis de usuário.</p>
                    <h2>EQUIPE:</h2>
                    
                    <center>
                    <div class="col-md-3">
                        <img src="resources/img/caio.jpg" width="150" height="150" class="img-circle" />
                        <h4 align="center">Caio Araújo</h4>
                    </div>
                    <div class="col-md-3">
                        <img src="resources/img/denny.jpg" width="150" height="150" class="img-circle" />
                        <h4 align="center">Denny Lira</h4>
                    </div>
                    <div class="col-md-3">
                        <img src="resources/img/gustavo.jpg" width="150" height="150" class="img-circle" />
                        <h4 align="center">Gustavo Augusto</h4>
                    </div>
                    <div class="col-md-3">
                        <img src="resources/img/victor.jpg" width="150" height="150" class="img-circle" />
                        <h4 align="center">Victor Dias</h4>
                    </div>
                    </center>              

                    <p align="right" style="margin: 220px 0 -20px 0"><a class="btn btn-lg btn-success" href="https://github.com/dennylira/ProjetoPOOFinal" target="_blank" role="button">Ver no GitHub >></a></p>
                    
                    
                </div>
                
                
                
                <a href="teste.jsp" class="btn btn-primary btn-lg btn-block">INICIAR TESTE</a>
            </div>
            
        <% } %>
            


    </body>
</html>
