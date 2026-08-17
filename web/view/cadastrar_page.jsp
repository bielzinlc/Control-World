<!DOCTYPE html>
<html lang="pt-br">
  <head>
      <link rel="icon" href="../img/tent3.jpg" />
      <link href="../css/cadastro.css" rel="stylesheet" type="text/css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Cadastrar</title>
  </head>
  <body>
      
      <form action="../controller/cadastrar.jsp">
          
         
          <fieldset id="dados-pessoais">
              
         <legend><h2>Dados pessoais</h2></legend>
         
      <label for=""
        >Nome: <input type="text" name="n_nome" maxlength="45"
      /></label>
      <label for=""
        >Idade: <input type="number" name="n_idade" maxlength="3"
      /></label>
          </fieldset>
          <fieldset id="endereco">
              <legend><h2>Endereço</h2></legend>
      <label for=""
        >Rua: <input type="text" name="n_rua" maxlength="45"
      /></label>
      <label for=""
        >Número: <input type="number" name="n_numero" maxlength="9"
      /></label>
      <label for=""
        >Cidade: <input type="text" name="n_cidade" maxlength="45"
      /></label>
          </fieldset>
          <a href="inicio.html"></a>
        <input type="submit" value="Cadastrar">
        <input type="reset" value="Limpar campos" />
        <a href="alterar_page.html"><input type="button" value="Alterar Dados"></a>
        
    </form>
  </body>
</html>
