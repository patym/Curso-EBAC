            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero poder concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse a página de cadastro

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu cadastrar todos os dados obrigatórios
            Então devo ser redirecionado para a tela de finalizar compra

            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu digitar um e-mail com formato inválido
            Então deve mostrar uma mensagem de erro "Campo de e-mail não foi preenchido corretamente."

            Esquema do Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando eu cadastrar com <campo vazio> obrigatório
            Então deve exibir uma <mensagem> de alerta

            Exemplos:
            | campo vazio    | mensagem                          |
            | "usuário"      | "Preencher campo de Usuário"      |
            | "senha"        | "Preencher campo de Senha"        |
            | "e-mail"       | "Preencher campo de E-mail"       |

            Esquema do Cenário: Realizar múltiplos cadastros
            Quando eu digitar o <nome>
            E o <sobrenome>
            E o <email>
            E o <cartao>
            Então deve exibir uma <mensagem>

            Exemplos:
            | nome      | sobrenome   | email           | cartao          | mensagem                                           |
            | "joao"    | "teste@123" | joao@gmail.com  | "4111111111111" | "Cadastro concluído com sucesso!"                  |
            | "yututyu" | "teste@123" | ""              | ""              | "Alguns campos obrigatórios não foram preenchidos" |
            | "jose"    | "teste@123" | josegmail@com   | "4333333333333" | "Campo de e-mail não foi preenchido corretamente." |
            | "pedro"   | ""          | ""              | ""              | "Deve preencher os campos vazios."                 |    