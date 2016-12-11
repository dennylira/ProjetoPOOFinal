<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="resources/bootstrap/css/login-2.css" rel="stylesheet" type="text/css"/>
        <link href="resources/bootstrap/css/login-3.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
    <div class="container">
        
        <h1>HOME - RESULTADOS</h1>
        <hr>             	                  
        
        <div class="row">
            <div class="col-sm-5">

                    <div class="form-box">
                            <div class="form-top">
                                    <div class="form-top-left">
                                            <h3>Fazer login</h3>
                                    <p>Digite seu nome de usuário e sua senha:</p>
                                    </div>
                                    <div class="form-top-right">
                                            <i class="fa fa-key"></i>
                                    </div>
                        </div>
                        <div class="form-bottom">
                                        <form role="form" action="" method="post" class="login-form">
                                            <div class="form-group">
                                                    <label class="sr-only" for="form-username">Usuário</label>
                                                    <input type="text" name="form-username" placeholder="Usuário..." class="form-username form-control" id="form-username">
                                            </div>
                                            <div class="form-group">
                                                    <label class="sr-only" for="form-password">Senha</label>
                                                    <input type="password" name="form-password" placeholder="Senha..." class="form-password form-control" id="form-password">
                                            </div>
                                            <button type="submit" class="btn">Entrar!</button>
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
                                            <h3>Cadastre-se</h3>
                                    <p>Se você não possui cadastro, preencha os dados abaixo:</p>
                                    </div>
                                    <div class="form-top-right">
                                            <i class="fa fa-pencil" aria-hidden="true"></i>
                                    </div>
                        </div>
                        <div class="form-bottom">
                                        <form role="form" action="" method="post" class="registration-form">
                                            <div class="form-group">
                                                    <label class="sr-only" for="form-first-name">Nome completo</label>
                                                    <input type="text" name="form-first-name" placeholder="Nome completo..." class="form-first-name form-control" id="form-first-name">
                                            </div>
                                            <div class="form-group">
                                                    <label class="sr-only" for="form-email">Email</label>
                                                    <input type="text" name="form-email" placeholder="E-mail..." class="form-email form-control" id="form-email">
                                            </div>
                                            <div class="form-group">
                                                    <label class="sr-only" for="form-email">Usuário</label>
                                                    <input type="text" name="form-email" placeholder="Nome de usuário..." class="form-email form-control" id="form-email">
                                            </div>                                                        
                                            <div class="form-group">
                                                    <label class="sr-only" for="form-last-name">Senha</label>
                                                    <input type="password" name="form-last-name" placeholder="Senha..." class="form-last-name form-control" id="form-last-name">
                                            </div>
                                            <button type="submit" class="btn">Cadastrar!</button>
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
