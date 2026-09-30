# language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Esquema do Cenário: Cadastrar com dados obrigatórios
Dado que estou na tela de cadastro do checkout
Quando preencher os campos obrigatórios com os seguintes dados:
| nome     | <nome>     |
| sobrenome| <sobrenome>|
| endereco | <endereco> |
| cidade   | <cidade>   |
| estado   | <estado>   |
| cep      | <cep>      |
| email    | <email>    |
E enviar o cadastro
Então o sistema deve permitir o cadastro quando todos os campos obrigatórios estiverem preenchidos corretamente
Exemplos:
| nome   | sobrenome | endereco        | cidade         | estado | cep       | email              |
| Thiago | Moreira   | Rua Exemplo, 10 | São Paulo      | SP     | 11000-000 | thiago@exemplo.com |
| Laís   | Silva     | Av. Exemplo, 20 | Espírito Santo | ES     | 27000-000 | lais@exemplo.com  |

Esquema do Cenário: Tentar cadastrar com e-mail inválido
Dado que estou na tela de cadastro do checkout
E todos os campos obrigatórios estão preenchidos corretamente
Quando informar o e-mail "<email>"
E enviar o cadastro
Então o sistema deve exibir uma mensagem de erro
E não deve permitir o cadastro

Exemplos:
| email          |
| email-invalido |
| usuario@       |
| @dominio.com   |

Cenário: Tentar cadastrar com campos vazios
Dado que estou na tela de cadastro do checkout
E existem campos obrigatórios vazios
Quando enviar o cadastro
Então deve ser exibida uma mensagem de alerta
E o cadastro não deve ser concluído