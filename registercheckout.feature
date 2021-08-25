            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero poder concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse a página de cadastro

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos - válido
            Quando eu digitar o nome "joao"
            E o sobrenome "paulo"
            E o email "joaopaulo@gmail.com"
            E dados do cartão "411111111"
            Então devo ser redirecionado para a tela de finalizar compra

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos - inválido
            Quando eu digitar o nome "pedro"
            E o sobrenome "correia"
            E o e-mail "pedro@gmail.com"
            E dados do cartão ""
            Então deve mostrar uma mensagem de alerta "Alguns campos obrigatórios não foram preenchidos"

            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu digitar o nome "julio"
            E o sobrenome "oliveira"
            E o email "juliogmail@com"
            E dados do cartão "422222222"
            Então deve mostrar uma mensagem de erro "Campo de e-mail não foi preenchido corretamente."

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando eu digitar o nome ""
            E o sobrenome "césar"
            E o email ""
            E dados do cartão ""
            Então deve mostrar uma mensagem de alerta "Deve preencher os campos vazios."

            Esquema do Cenário: Realizar múltiplos cadastros
            Quando eu digitar o <nome>
            E o <sobrenome>
            E o <email>
            E o <cartao>
            Então deve exibir uma <mensagem>

            Exemplos:
            | nome      | sobrenome   | email           | cartao          | mensagem                                           |
            | "joao"    | "teste@123" | joao@gmail.com  | "4111111111111" | "Cadastro concluído com sucesso!"                  |
            | "maria"   | "teste@123" | maria@gmail.com | "4222222222222" | "Cadastro concluído com sucesso!"                  |
            | "yututyu" | "teste@123" | ""              | ""              | "Alguns campos obrigatórios não foram preenchidos" |
            | "jose"    | "teste@123" | josegmail@com   | "4333333333333" | "Campo de e-mail não foi preenchido corretamente." |
            | "pedro"   | ""          | ""              | ""              | "Deve preencher os campos vazios."                 |