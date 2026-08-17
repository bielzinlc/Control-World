

<%@page import="javax.swing.JOptionPane"%>
<%@page import="model.dao.CadastroDAO"%>
<%@page import="model.dto.Cadastro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <link rel="stylesheet" href="../css/altexc.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="3; ../view/cadastrar_page.jsp">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            
            
                    Cadastro objCadastro = new Cadastro();
            
            objCadastro.setNumero(Integer.parseInt(request.getParameter("n_numero")));
            
            CadastroDAO objCadastroDAO = new CadastroDAO();
            objCadastroDAO.excluirCadastro(objCadastro);
            
              
            out.print("<h2>Cadastro excluido com sucesso."+"</h2>");
        
            
            
            
           
        %>
    </body>
</html>
