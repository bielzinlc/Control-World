<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="0.001; ../view/inicio.html">
        <title></title>
    </head>
    <body>
        <%
           Cadastro objCadastro = new Cadastro();
           
           objCadastro.setNome(request.getParameter("n_nome")); 
           objCadastro.setIdade(Integer.parseInt(request.getParameter("n_idade")));
           objCadastro.setRua(request.getParameter("n_rua")); 
           objCadastro.setNumero(Integer.parseInt(request.getParameter("n_numero")));
           objCadastro.setCidade(request.getParameter("n_cidade"));
          
           CadastroDAO objCadastroDAO = new CadastroDAO();
           objCadastroDAO.cadastrar(objCadastro);
        
        
        
        %>
    </body>
</html>
