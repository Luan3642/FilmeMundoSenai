<%-- 
    Document   : Lista
    Created on : 22/09/2016, 09:24:23
    Author     : Administrador
--%>

<%@page import="br.com.mundosenai.model.BeansFilme"%>
<%@page import="br.com.mundosenai.dao.ControlFilme"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Filmes :: MundoSenai</title>
        <meta charset="UTF-8">
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
                    <li><a href="Cadastro.jsp">Cadastrar</a></li>
                    <li class="active"><a href="Lista.jsp">Filmes</a></li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <h2>Lista de livros</h2>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Cod.</th>
                        <th>Título</th>
                        <th>Gênero</th>
                        <th>Nota</th>
                        <th>Ano</th>
                    </tr>
                </thead>
                
                <tbody>
                    <%
                        ControlFilme ctrlFilme = new ControlFilme();
                        for(BeansFilme filme : ctrlFilme.listaFilme()){
                    %>
                    <tr>
                        <td><%= filme.getId()%></td>
                        <td><%= filme.getTitulo()%></td>
                        <td><%= filme.getGenero()%></td>
                        <td><%= filme.getClas() %></td>
                        <td><%= filme.getAno()%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
