
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="../controller/excluir.jsp">
      <label for=""
        >Nome: <input type="text" name="n_nome" maxlength="45"
      /></label>
      <label for=""
        >Idade: <input type="number" name="n_idade" maxlength="3"
      /></label>
      <label for=""
        >Rua: <input type="text" name="n_rua" maxlength="45"
      /></label>
      <label for=""
        >Número: <input type="number" name="n_numero" maxlength="9"
      /></label>
      <label for=""
             >Cidade: <input type="text" name="n_cidade" value="<%=request.getParameter("")%>" maxlength="45"
      /></label>
        
        <input type="submit" value="Excluir">
        </form>
    </body>
</html>
