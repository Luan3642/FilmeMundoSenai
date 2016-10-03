package br.com.mundosenai.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

    public Connection getConnection() {
        Connection conn;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = ("jdbc:mysql://localhost:3306/mundosenai");
            String user = ("root");
            String psw = ("123456");
            conn = DriverManager.getConnection(url,user,psw);
            return conn;
        } catch (ClassNotFoundException ex) {
            System.err.println("Erro no Driver!\n"+ex);
            return null;
        } catch (SQLException ex) {
            System.err.println("Erro no Banco de dados!\n"+ex);
            return null;
        }
    }
}