
package model.dao;

import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import model.conexaobd.ConexaoBD;
import model.dto.Cadastro;

public class CadastroDAO {
    
    private Connection conexao;
    private PreparedStatement ps;
    private ResultSet resultado;
    
    public void cadastrar(Cadastro objCadastro) {
        this.conexao = new ConexaoBD().getConexao();
        
        String sql = "insert into tb_cadastro(nome,idade,rua,numero,cidade)"
                + "values(?,?,?,?,?);";
        
        try {
            this.ps = this.conexao.prepareStatement(sql);
            
            this.ps.setString(1, objCadastro.getNome());
            this.ps.setInt(2, objCadastro.getIdade());
            this.ps.setString(3, objCadastro.getRua());
            this.ps.setInt(4, objCadastro.getNumero());
            this.ps.setString(5, objCadastro.getCidade());
            
            this.ps.execute();
            this.ps.close();
            
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Deu merda na classe CadastroDAO e no metodo cadastrar()" + e);
        }
        
    }
    
    public ArrayList<Cadastro> listarCadastros() {
            this.conexao = new ConexaoBD().getConexao();
            ArrayList<Cadastro> listaDeCadastros = new ArrayList<>();
            String sql = "SELECT * FROM tb_cadastro";
            
            try {
            this.ps = this.conexao.prepareStatement(sql);
                    this.resultado = this.ps.executeQuery();
                    
                    while (this.resultado.next()) {
                        Cadastro objCadastro = new Cadastro();
                        
                        objCadastro.setId(this.resultado.getInt("pkid_cadastro"));
                        objCadastro.setNome(this.resultado.getString("nome"));
                        objCadastro.setIdade(this.resultado.getInt("idade"));
                        objCadastro.setRua(this.resultado.getString("rua"));
                        objCadastro.setNumero(this.resultado.getInt("numero"));
                        objCadastro.setCidade(this.resultado.getString("cidade"));
                        
                        listaDeCadastros.add(objCadastro);
                    }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Deu merda na classe CadastroDAO e no metodo listarCadastros()" + e);
        }
            return listaDeCadastros;
        }
    
    public void alterarCadastro(Cadastro objCadastro) {
    this.conexao = new ConexaoBD().getConexao();
    String sql = "UPDATE tb_cadastro SET nome=?, idade=?, rua=?, cidade=? WHERE numero=?";
    
    try {
        this.ps = this.conexao.prepareStatement(sql);
        this.ps.setString(1, objCadastro.getNome());
        this.ps.setInt(2, objCadastro.getIdade());
        this.ps.setString(3, objCadastro.getRua());
        this.ps.setString(4, objCadastro.getCidade());
        this.ps.setInt(5, objCadastro.getNumero());  // Atualiza o número no banco

        this.ps.executeUpdate();
        this.ps.close();
    } catch (SQLException e) {
        JOptionPane.showMessageDialog(null, "Erro ao alterar cadastro: " + e);
    }
}
    
    public void excluirCadastro(Cadastro objCadastro) {
         this.conexao = new ConexaoBD().getConexao();
        String sql = "DELETE FROM tb_cadastro "
                + "where numero=?";
        
        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.ps.setInt(1, objCadastro.getNumero());
            
            this.ps.executeUpdate();
            this.ps.close();
                    
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Deu merda na classe CadastroDAO e no metodo excluirCadastro()" + e);
        }
        
    }
    
    public Cadastro buscarCadastro(int numero) {
        this.conexao = new ConexaoBD().getConexao();
    Cadastro objCadastro = null;
    String sql = "SELECT * FROM tb_cadastro WHERE numero=?";

    try {
        this.ps = this.conexao.prepareStatement(sql);
        this.ps.setInt(1, numero);
        this.resultado = this.ps.executeQuery();
        
        if (this.resultado.next()) {
            objCadastro = new Cadastro();
            objCadastro.setId(this.resultado.getInt("pkid_cadastro"));
            objCadastro.setNome(this.resultado.getString("nome"));
            objCadastro.setIdade(this.resultado.getInt("idade"));
            objCadastro.setRua(this.resultado.getString("rua"));
            objCadastro.setNumero(this.resultado.getInt("numero"));
            objCadastro.setCidade(this.resultado.getString("cidade"));
        }
    } catch (SQLException e) {
        JOptionPane.showMessageDialog(null, "Erro ao buscar cadastro: " + e);
    }
        return objCadastro;

}
    }

