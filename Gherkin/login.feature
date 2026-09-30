# language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos
Contexto: Dado que estou na tela de login da EBAC-SHOP

    Cenário: Login com dados válidos
    Quando inserir o usuário e a senha válidos e confirmar o login
    Então devo ser direcionado para a tela de checkout

    Cenário: Login com usuário inválido
    Quando inserir um usuário inválido e uma senha válida e confirmar o login
    Então deve ser exibida a mensagem de alerta "Usuário ou Senha Inválidos"

    Cenário: Login com senha inválida
    Quando inserir um usuário válido e uma senha inválida e confirmar o login
    Então deve ser exibida a mensagem de alerta "Usuário ou Senha Inválidos"