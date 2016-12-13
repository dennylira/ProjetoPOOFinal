<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.sample.contacts.Login"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="resources/bootstrap/js/jquery-1.11.1.min.js" type="text/javascript"></script>
        <script src="resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script> function alterado(){alert("Cadastro alterado com sucesso!");}</script>
        <title>Cadastro</title>
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
                    
                <%
                String error = null;
                if(request.getParameter("update")!=null){
                    String username = request.getParameter("username");
                    String name = request.getParameter("name");
                    String mail = request.getParameter("mail");
                    String password = request.getParameter("password");                    
                    try{                        
                        Login.update(username, name, mail, password);
                        response.sendRedirect("usuario.jsp?prepare="+username);                                                
                    }catch(Exception e){error = e.getLocalizedMessage();}
                }else if(request.getParameter("delete")!=null){
                    String username = request.getParameter("username");
                    try{
                        Login.delete(username);
                        response.sendRedirect("login.jsp");
                    }catch(Exception e){error = e.getLocalizedMessage();}
                }
                %>
                  
                <% if(request.getParameter("prepare")!=null){ %>
                <% Login c = Login.getUser(request.getParameter("prepare")); %>

                <form>
                    Nome de usuário: <input type="text" class="form-control" name="username" value="<%=session.getAttribute("username-l")%>" readonly />
                    Nome: <input type="text" class="form-control" name="name" value="<%= c.getName() %>" required />
                    E-mail: <input type="email" class="form-control" name="mail" value="<%= c.getMail()%>" required />
                    Senha: <input type="password" class="form-control" name="password" value="" required /><br>
                    
                    <input type="submit" name="delete" value="Apagar Cadastro" class="btn btn-lg btn-danger" />
                    <input type="submit" name="update" value="Salvar Alterações" class="btn btn-lg btn-success pull-right" />
                </form>
               
                <% } //falta colocar as mensagens de validação%>


                    
                    
                    
                </div>
            </div>
            
        <% } %>
            


    </body>
</html>
