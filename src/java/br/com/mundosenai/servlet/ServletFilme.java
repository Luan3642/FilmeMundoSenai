package br.com.mundosenai.servlet;

import br.com.mundosenai.dao.ControlFilme;
import br.com.mundosenai.model.BeansFilme;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletFilme", urlPatterns = {"/ServletFilme"})
public class ServletFilme extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String titulo = request.getParameter("titulo");
        String genero = request.getParameter("genero");
        int clas = Integer.parseInt(request.getParameter("clas"));
        int ano = Integer.parseInt(request.getParameter("ano"));

        try {
            BeansFilme filme = new BeansFilme();
            filme.setTitulo(titulo);
            filme.setGenero(genero);
            filme.setClas(clas);
            filme.setAno(ano);

            ControlFilme ctrlFilme = new ControlFilme();
            ctrlFilme.cadastraFilme(filme);

        } catch (SQLException ex) {
            System.err.println("Erro no Banco de dados com Servlet!\n" + ex);
        }

        response.sendRedirect("/FilmeMundoSenai/Lista.jsp");
    }
}
