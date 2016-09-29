
package br.com.mundosenai.dao;

import br.com.mundosenai.connection.ConnectionFactory;
import br.com.mundosenai.model.BeansFilme;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControlFilme {

    Connection conn;
    
    public ControlFilme() {
    this.conn = new ConnectionFactory().getConnection();
    }
    
    public void cadastraFilme(BeansFilme filme) throws SQLException{
        String sql = "INSERT INTO FILME(FIL_TITULO, FIL_GENERO, FIL_CLAS, FIL_ANO) VALUES(?,?,?,?)";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, filme.getTitulo());
        stmt.setString(2, filme.getGenero());
        stmt.setInt(3, filme.getClas());
        stmt.setInt(4, filme.getAno());
        stmt.execute();
        conn.close();
    }
    
    public List<BeansFilme> listaFilme() throws SQLException{
        List<BeansFilme> listFilmes = new ArrayList<>();
        String sql = "SELECT * FROM FILME";
        PreparedStatement stmt = conn.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        while(rs.next()){
            BeansFilme filme = new BeansFilme();
            filme.setId(rs.getInt("FIL_ID"));
            filme.setTitulo(rs.getString("FIL_TITULO"));
            filme.setGenero(rs.getString("FIL_GENERO"));
            filme.setClas(rs.getInt("FIL_CLAS"));
            filme.setAno(rs.getInt("FIL_ANO"));
            filme.setData(rs.getDate("FIL_DATA"));
            listFilmes.add(filme);
        }
        conn.close();
        return listFilmes;
    }
}
