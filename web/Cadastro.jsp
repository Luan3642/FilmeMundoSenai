<%-- 
    Document   : Cadastro
    Created on : 22/09/2016, 09:24:13
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="pt-br" xml:lang="pt-br">
    <head>
        <title>Cadastro :: MundoSenai</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" type="image/x-icon" href="imagens/IconFilm.ico">

        <!-- CSS do Bootstrap -->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!--Livraria JQuery-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

        <!-- Javascript do Bootstrap -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">MundoSenai</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><a href="Cadastro.jsp">Cadastrar</a></li>
                    <li><a href="Lista.jsp">Filmes</a></li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <h2>Cadastro de Filmes</h2>
            <form action="ServletFilme" method="GET">
                <div class="form-group">
                    <label for="titulo">Título</label>
                    <input name="titulo" type="text" class="form-control" placeholder="Senhor dos Aneis">
                </div>
                
                <div class="form-group">
                    <label for="genero">Gênero</label>
                    <input name="genero" type="text" class="form-control" placeholder="Aventura">
                </div>
                
                <div class="form-group">
                    <label for="clas">Nota</label>
                    <input name="clas" type="number" class="form-control" placeholder="0 - 5">
                </div>
                
                <div class="form-group">
                    <label for="ano">Ano</label>
                    <input name="ano" type="number" class="form-control" placeholder="2007">
                </div>
                
                <button type="submit" class="btn btn-default">Cadastrar</button>
                <button type="reset" class="btn btn-default">Limpar</button>
            </form>
        </div>
    </body>
</html>