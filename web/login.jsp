<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.sample.contacts.Login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Identificação</title>
        
        <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="resources/bootstrap/css/login-2.css" rel="stylesheet" type="text/css"/>
        <link href="resources/bootstrap/css/login-3.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>

 
    <div class="container">
        
                    <div class="navbar">
              
            <div class="pull-left"><h1>WebQuiz</h1></div>
            <div class="pull-right" style="padding-top:20px"><a class="btn btn-info" href="ranking.jsp">Ranking</a></div>

           </div><hr/>
        
        <%
        String error = null;
        if(request.getParameter("cadastrar")!=null){
            String name = request.getParameter("name");
            String mail = request.getParameter("mail");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            try{
                if (Login.verifica(username) == true){
                    Login.insert(name, mail, username, password);%>
                    <div class="alert alert-success" role="alert">Cadastro efetuado com sucesso! Efetue o login no formulário à esquerda.</div><%
                }
            else {%>
                <div class="alert alert-danger" role="alert">ATENÇÃO: Já existe um usuário com esse nome cadastrado. Por favor, tente novamente com outro nome de usuário.</div><%
            }
                
            }catch(Exception e){error = e.getLocalizedMessage();}
        }
        %>
        
        <%
        if(request.getParameter("logar")!=null){
            String usernamel = request.getParameter("username-l");    
            String passwordl = request.getParameter("password-l");
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url = "jdbc:derby://localhost:1527/sample";
            Connection con = DriverManager.getConnection (url, "app", "app");
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("select * from app.usuario where username='" + usernamel + "' and password='" + passwordl + "'");
            if (rs.next()) {
                session.setAttribute("username-l", usernamel);
                response.sendRedirect("index.jsp");
            }
            else {
                out.println("<div class='alert alert-danger' role='alert'>ATENÇÃO: Usuário ou senha inválidos. Por favor, tente novamente.</div>");
            }
        }
        %>      
               
        
        <%if(error != null){%>
        <h2 style="color: red;">Erro: <%=error%></h2>
        <%}%>
        
        <div class="row" style="margin-top:-40px;">
            <div class="col-sm-5">

                    <div class="form-box">
                            <div class="form-top">
                                    <div class="form-top-left">
                                        <h3><b>Fazer login</b></h3>
                                    <p>Digite seu nome de usuário e sua senha:</p>
                                    </div>
                                    <div class="form-top-right">
                                            <i class="fa fa-key"></i>
                                    </div>
                        </div>
                        <div class="form-bottom">
                                        <form role="form" action="" method="get" class="login-form">
                                            <div class="form-group">
                                                <input type="text" name="username-l" placeholder="Nome de usuário..." class="form-username form-control" id="form-username" required>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" name="password-l" placeholder="Senha..." class="form-password form-control" id="form-password" required>
                                            </div>
                                            <input type="submit" name="logar" class="btn btn-success btn-block" value="Entrar">
                                        </form>
                                </div>
                        </div>

                            <div class="social-login">
                            <h3>...ou faça login com:</h3>
                            <div class="social-login-buttons">
                                    <a class="btn btn-link-1 btn-link-1-facebook" href="#">
                                            <i class="fa fa-facebook"></i> Facebook
                                    </a>
                                    <a class="btn btn-link-1 btn-link-1-twitter" href="#">
                                            <i class="fa fa-twitter"></i> Twitter
                                    </a>
                                    <a class="btn btn-link-1 btn-link-1-google-plus" href="#">
                                            <i class="fa fa-google-plus"></i> Google Plus
                                    </a>
                            </div>
                    </div>

            </div>

            <div class="col-sm-1 middle-border"></div>
            <div class="col-sm-1"></div>

            <div class="col-sm-5">

                    <div class="form-box">
                            <div class="form-top">
                                    <div class="form-top-left">
                                        <h3><b>Cadastre-se</b></h3>
                                    <p>Preencha os dados abaixo:</p>
                                    </div>
                                    <div class="form-top-right">
                                            <i class="fa fa-pencil" aria-hidden="true"></i>
                                    </div>
                        </div>
                        <div class="form-bottom">
                                        <form role="form" action="" method="get" class="registration-form">
                                            <div class="form-group">
                                                    <input type="text" name="name" placeholder="Nome completo..." class="form-first-name form-control" id="form-first-name" required>
                                            </div>
                                            <div class="form-group">
                                                    <input type="email" name="mail" placeholder="E-mail..." class="form-email form-control" id="form-email" required>
                                            </div>
                                            <div class="form-group">
                                                    <input type="text" name="username" placeholder="Nome de usuário..." class="form-email form-control" id="form-email" required>
                                            </div>                                                        
                                            <div class="form-group">
                                                    <input type="password" name="password" placeholder="Senha..." class="form-last-name form-control" id="form-last-name" required>
                                            </div>
                                            <input type="submit" name="cadastrar" class="btn btn-success btn-block" value="Cadastrar">
                                        </form>
                                </div>
                    </div>

            </div>
        </div>

    </div>
        
        <!-- Javascript 
        <script src="resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/bootstrap/js/jquery-1.11.1.min.js" type="text/javascript"></script>
        <script src="resources/bootstrap/js/scripts.js" type="text/javascript"></script>-->
        
    </body>
</html>
