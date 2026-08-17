<!DOCTYPE html>
<html>
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

h1 {
    color: #f39c12; /* Cor vibrante para o título */
    text-shadow: 2px 2px 5px #000; /* Sombra para destacar o texto */
    font-size: 24px;
}

form {
    background-color: #2c3e50; /* Fundo dos formulários */
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.5); /* Sombra estilosa */
    margin-bottom: 20px;
    width: 300px;
    margin-right: 10px;
}
#exc {
    padding: 25px;
    
}
p {
    color: #ecf0f1; /* Texto de descrição */
    font-size: 14px;
}

input[type="number"] {
    background-color: #34495e;
    border: 2px solid #e74c3c; /* Borda vermelha */
    border-radius: 5px;
    padding: 10px;
    color: #fff;
    font-size: 14px;
    width: 100%;
    margin-bottom: 10px;
    outline: none;
    position: relative;
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
    font-family: 'Press Start 2P', monospace; /* Mesma fonte retrô */
}

input[type="submit"]:hover {
    background-color: #c0392b; /* Efeito ao passar o mouse */
}

@media (max-width: 400px) {
    form {
        width: 100%;
        box-sizing: border-box;
    }
}
        </style>
        
        
    <h1>Buscar Cadastro</h1>
    <form  action="../controller/alterar.jsp" method="post">
        <p>Coloque o número de sua casa para que possa buscar e alterar seus dados:</p> <input type="number" name="numero" required>
        <input type="submit" value="Buscar">
    </form>
        
        <form id="exc" method="get" action="../controller/excluir.jsp">
            
            <label for="cod"> <p>Coloque o número de sua casa para que possa excluir dados:</p> <input id="n_numero" type="number" name="n_numero" required></label>
            <input type="submit" value="Excluir">
            
            
            
            </fieldset>
        </form> 
    <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
    </body>
</html>
