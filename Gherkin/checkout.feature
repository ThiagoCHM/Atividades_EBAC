# language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra
Contexto: Dado que estou na tela de cadastro do checkout

    Esquema do Cenário: Cadastrar com dados obrigatórios
    Quando preencher <nome>, <sobrenome>, <endereco>, <cidade>, <cep>, <telefone>, <email> e enviar o cadastro
    Então o sistema deve permitir o cadastro

        Exemplos:
        | nome   | sobrenome | endereco        | cidade         | cep       | telefone        | email              |
        | Thiago | Moreira   | Rua Exemplo, 10 | São Paulo      | 11000-000 | (11) 99999-9999 | thiago@exemplo.com |
        | Laís   | Silva     | Av. Exemplo, 20 | Espírito Santo | 27000-000 | (27) 99999-9999 | lais@exemplo.com   |

    Esquema do Cenário: Tentar cadastrar com e-mail inválido com todos os campos obrigatórios preenchidos corretamente
    Quando informar o <email> e enviar o cadastro
    Então o sistema deve exibir uma mensagem de erro e não permitir o cadastro

        Exemplos:
        | email          |
        | email-invalido |
        | usuario@       |
        | @dominio.com   |

    Cenário: Tentar cadastrar com campos obrigatórios vazios
    Quando deixar de preencher algum campo obrigatório marcado com asterisco e enviar o cadastro
    Então deve ser exibida uma mensagem de alerta e o cadastro não deve ser concluído