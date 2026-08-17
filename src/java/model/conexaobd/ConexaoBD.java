
package model.conexaobd;

import java.sql.*;
import javax.swing.JOptionPane;

public class ConexaoBD {
    
    private Connection conexao;
    
    public Connection getConexao() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/bd_cadastro?user=root";
            this.conexao = DriverManager.getConnection(url);
        } catch (ClassNotFoundException | SQLException e) {
            JOptionPane.showMessageDialog(null, "Deu merda na classe ConexaoBD e no metodo getConexao()" + e);
        }
            return conexao;
    }
        
}
