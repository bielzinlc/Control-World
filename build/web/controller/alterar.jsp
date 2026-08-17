
<%@page import="javax.swing.JOptionPane"%>
<%@page import="model.dao.CadastroDAO"%>
<%@page import="model.dto.Cadastro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
        <title>Alteração de Dados</title>
    </head>
    <body>
        <style>
            body {
            background-color: #1a1a1d; /* Fundo escuro estilo gamer */
            color: #fff; /* Texto branco para contraste */
            font-family: 'Press Start 2P', monospace; /* Fonte pixelada estilo retrô */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            background-color: #2c3e50; /* Fundo dos formulários */
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5); /* Sombra estilosa */
            width: 300px;
            font-family: 'Press Start 2P', monospace;
        }

        form label {
            display: block;
            margin-bottom: 10px;
            color: #ecf0f1; /* Texto de descrição */
            font-size: 12px;
        }

        input[type="text"] {
            background-color: #34495e;
            border: 2px solid #e74c3c; /* Borda vermelha */
            border-radius: 5px;
            padding: 10px;
            color: #fff;
            font-size: 14px;
            width: 100%;
            margin-bottom: 15px;
            outline: none;
        }

        input[readonly] {
            background-color: #7f8c8d; /* Cor diferenciada para campo de leitura */
            border: 2px solid #bdc3c7; /* Borda cinza */
        }

        input[type="submit"] {
            background-color: #e74c3c; /* Cor vermelha para botões */
            color: #fff;
            border: none;
            border-radius: 10px;
            padding: 10px 20px;
            font-size: 14px;
            cursor: pointer;
            transition: 0.3s ease;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #c0392b; /* Efeito ao passar o mouse */
        }
        </style>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <%
    String numeroParam = request.getParameter("numero");
    Cadastro cadastro = null;
    
    if (numeroParam != null) {
        try {
            int numero = Integer.parseInt(numeroParam);
            CadastroDAO cadastroDAO = new CadastroDAO();
            cadastro = cadastroDAO.buscarCadastro(numero);
            
            if (cadastro == null) {
                out.println("Cadastro não encontrado.");
            }
        } catch (NumberFormatException e) {
            out.println("Número inválido.");
        }
    }
%>

<%
    // Quando o formulário for enviado, processa as alterações
    if (request.getMethod().equalsIgnoreCase("POST")) {
        String nome = request.getParameter("nome");
        String idadeParam = request.getParameter("idade");
        String rua = request.getParameter("rua");
        String cidade = request.getParameter("cidade");
        String numeroStr = request.getParameter("numero");

        try {
            int numero = Integer.parseInt(numeroStr);
            int idade = Integer.parseInt(idadeParam);

            // Cria um novo objeto Cadastro com os dados fornecidos
            Cadastro cadastroAtualizado = new Cadastro();
            cadastroAtualizado.setNumero(numero);  // Pode alterar o número se necessário
            cadastroAtualizado.setNome(nome);
            cadastroAtualizado.setIdade(idade);
            cadastroAtualizado.setRua(rua);
            cadastroAtualizado.setCidade(cidade);

            // Chama o método de atualização no DAO
            CadastroDAO cadastroDAO = new CadastroDAO();
            cadastroDAO.alterarCadastro(cadastroAtualizado);
            
            response.sendRedirect("../view/inicio.html");
        } catch (Exception e) {
            
        }
    }
%>

<form method="post">
    Número: <input type="text" name="numero" value="<%= cadastro != null ? cadastro.getNumero() : "" %>" required readonly><br>
    Nome: <input type="text" name="nome" value="<%= cadastro != null ? cadastro.getNome() : "" %>" required><br>
    Idade: <input type="text" name="idade" value="<%= cadastro != null ? cadastro.getIdade() : "" %>" required><br>
    Rua: <input type="text" name="rua" value="<%= cadastro != null ? cadastro.getRua() : "" %>" required><br>
    Cidade: <input type="text" name="cidade" value="<%= cadastro != null ? cadastro.getCidade() : "" %>" required><br>
    <input type="submit" value="Salvar Alterações">
</form>
    
    <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
    </body>
</html>
