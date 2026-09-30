# language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Cenário: Login com dados válidos
Dado que estou na tela de login da EBAC-SHOP
E possuo usuário e senha válidos
Quando inserir o usuário e a senha válidos
E confirmar o login
Então devo ser direcionado para a tela de checkout

Cenário: Login com usuário inválido
Dado que estou na tela de login da EBAC-SHOP
Quando inserir um usuário inválido e uma senha válida
E confirmar o login
Então deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"

Cenário: Login com senha inválida
Dado que estou na tela de login da EBAC-SHOP
Quando inserir um usuário válido e uma senha inválida
E confirmar o login
Então deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"
