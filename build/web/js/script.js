let controles = [
    { nome: "DualSense", preco: 400, imagem: "https://gmedia.playstation.com/is/image/SIEPDC/dualsense-controller-product-thumbnail-01-en-14sep21?$facebook$" },
    { nome: "Xbox Elite", preco: 800, imagem: "https://assets.xboxservices.com/assets/92/6f/926f1ec2-236d-4067-bd90-5bb1b2420790.png?n=Accessories_Panes-Triptic-Small-1084-0_White-elite-series-2_353x353.png" },
    { nome: "Nintendo Pro", preco: 500, imagem: "https://images.tcdn.com.br/img/img_prod/1211726/controle_pro_nintendo_switch_49_1_a559603a277f8b1d82c61faa873e8e7b.png" },
    { nome: "Razer Wolverine", preco: 700, imagem: "https://assets3.razerzone.com/bdb_DITMcWJXtSCnDY2zJzBJKVA=/1500x1000/https%3A%2F%2Fmedias-p1.phoenix.razer.com%2Fsys-master-phoenix-images-container%2Fh0b%2Fh8c%2F9466430914590%2Fwolverine-v2-pro-black-500x500.png" },
    { nome: "8Bitdo SN30", preco: 250, imagem: "https://cdn.awsli.com.br/2500x2500/138/138431/produto/240711248/26-p63vprntii.png" },
    { nome: "DualShock 4", preco: 350, imagem: "https://gmedia.playstation.com/is/image/SIEPDC/dualshock-controller-product-thumbnail-01-en-14sep21?$facebook$" },
    { nome: "Steam Controller", preco: 300, imagem: "https://staringatphones.com/wp-content/uploads/2016/01/steam-controller-transparency.png?w=842" },
    { nome: "Logitech F310", preco: 150, imagem: "https://www.logitechstore.com.br/media/catalog/product/g/a/ganepad-f310-01.png" }
];

function exibirControles(listaFiltrada = controles) {
    const lista = document.getElementById("controlList");
    lista.innerHTML = "";
    listaFiltrada.forEach((controle, index) => {
        lista.innerHTML += `
            <div class="control">
                <img src="${controle.imagem}" alt="${controle.nome}">
                <h3>${controle.nome}</h3>
                <p>R$ ${controle.preco}</p>
                <span class="delete" onclick="removerControle(${index})">[X]</span>
            </div>
        `;
    });
}

function filtrarControles() {
    const precoSelecionado = document.getElementById("preco").value;
    const filtrados = controles.filter(c => c.preco <= precoSelecionado);
    exibirControles(filtrados);
}

function removerControle(index) {
    controles.splice(index, 1);
    exibirControles();
}

function atualizarPreco() {
    document.getElementById("precoValor").innerText = "R$ " + document.getElementById("preco").value;
}

exibirControles();