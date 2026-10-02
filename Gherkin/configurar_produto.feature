# language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
Para depois inserir no carrinho
Contexto: Dado que estou na tela de configuração do produto

    Cenário: Configurar produto com cor, tamanho e quantidade
    Quando selecionar uma cor, selecionar um tamanho e informar uma quantidade válida e clicar em "Adicionar ao Carrinho"
    Então o produto configurado deve ser inserido no carrinho

    Cenário: Tentar configurar produto sem selecionar a cor
    Quando deixar de selecionar a cor e clicar em "Adicionar ao Carrinho"
    Então o sistema deve impedir a operação e exigir a seleção de cor

    Cenário: Tentar configurar produto sem selecionar o tamanho
    Quando deixar de selecionar o tamanho e clicar em "Adicionar ao Carrinho"
    Então o sistema deve impedir a operação e exigir a seleção de tamanho

    Cenário: Tentar configurar produto sem informar a quantidade
    Quando deixar de informar a quantidade e clicar em "Adicionar ao Carrinho"
    Então o sistema deve impedir a operação e exigir a quantidade

    Cenário: Tentar comprar mais de 10 produtos
    Quando informar uma quantidade maior que 10 e clicar em "Adicionar ao Carrinho"
    Então deve ser exibida a mensagem de alerta "Quantidade Máxima de 10 Produtos por Venda"

    Cenário: Limpar configuração do produto para item com cor, tamanho e quantidade já selecionados
    Quando selecionar Cor, Tamanho, Quantidade e clicar no botão "Limpar"
    Então as configurações devem voltar ao estado original

    Esquema do Cenário: Limpar configuração do produto
    Quando selecionar <configuração> e clicar no botão "Limpar"
    Então a <configuração> deve voltar ao estado original
        
        Exemplos:
        | configuração |
        | Cor          |
        | Tamanho      |
        | Quantidade   |