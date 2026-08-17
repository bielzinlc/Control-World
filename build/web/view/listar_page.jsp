

<%@page import="java.util.ArrayList"%>
<%@page import="model.dto.Cadastro"%>
<%@page import="model.dao.CadastroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header id="topo" class="container jumbotron">
            <a href="cadastrar_page.jsp" class="btn btn-success btn-controle">Novo</a>
            <h1>Listagem</h1>
            <a href="../index.html" class="btn btn-danger btn-controle">Sair</a>
        </header>
        <main id="corpo-lista">
            <%
                CadastroDAO objCadastroDAO = new CadastroDAO();
                
                ArrayList<Cadastro> l = objCadastroDAO.listarCadastros();
                
                for (int i = 0; i < l.size(); i++) {
                    out.print("<div class='container jumbotron'>");
                    out.print("<p>ID: "+l.get(i).getId()+"</p>");
                    out.print("<p>Nome: "+l.get(i).getNome()+"</p>");
                    out.print("<p>Idade: "+l.get(i).getIdade()+"</p>");
                    out.print("<p>Rua: "+l.get(i).getRua()+"</p>");
                    out.print("<p>Número: "+l.get(i).getNumero()+"</p>");
                    out.print("<p>Cidade: "+l.get(i).getCidade()+"</p>");
                    out.print("<a href='alterar_page.jsp?'"
                    + "id="+l.get(i).getId()+""
                    + "&nome="+l.get(i).getNome()+""
                    + "&idade="+l.get(i).getIdade()+""
                    + "&rua="+l.get(i).getRua()+""
                    + "&numero="+l.get(i).getNumero()+""
                    + "&cidade="+l.get(i).getCidade()+"<button class='btn btn-warning'>Alterar</button></a>");
                    out.print("<a href='excluir_page.jsp?'"
                    + "id="+l.get(i).getId()+""
                    + "&nome="+l.get(i).getNome()+""
                    + "&idade="+l.get(i).getIdade()+""
                    + "&rua="+l.get(i).getRua()+""
                    + "&numero="+l.get(i).getNumero()+""
                    + "&cidade="+l.get(i).getCidade()+"<button class='btn btn-danger'>Excluir</button></a>");
                    out.print("</div>");   
                }
            
            
            
            %>
            
            
            
            
        </main>
    </body>
</html>
