# language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
Para depois inserir no carrinho

Cenário: Configurar produto com cor, tamanho e quantidade
Dado que estou na tela de configuração do produto
Quando selecionar uma cor
E selecionar um tamanho
E informar uma quantidade válida
Então o produto deve estar configurado para ser inserido no carrinho

Cenário: Tentar configurar produto sem selecionar a cor
Dado que estou na tela de configuração do produto
E não selecionei uma cor
Quando tentar inserir o produto no carrinho
Então o sistema deve impedir a operação
E a seleção de cor deve ser obrigatória

Cenário: Tentar configurar produto sem selecionar o tamanho
Dado que estou na tela de configuração do produto
E não selecionei um tamanho
Quando tentar inserir o produto no carrinho
Então o sistema deve impedir a operação
E a seleção de tamanho deve ser obrigatória

Cenário: Tentar configurar produto sem informar a quantidade
Dado que estou na tela de configuração do produto
E não informei a quantidade
Quando tentar inserir o produto no carrinho
Então o sistema deve impedir a operação
E a quantidade deve ser obrigatória

Cenário: Tentar comprar mais de 10 produtos
Dado que estou na tela de configuração do produto
Quando informar uma quantidade maior que 10
Então o sistema deve impedir a quantidade informada
E deve permitir no máximo 10 produtos por venda

Cenário: Limpar configuração do produto
Dado que estou na tela de configuração do produto
E selecionei uma cor
E selecionei um tamanho
E informei uma quantidade
Quando clicar no botão "limpar"
Então a configuração deve voltar ao estado original
