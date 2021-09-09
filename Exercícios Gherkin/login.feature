            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu digitar o usuário "joao@gmail.com"
            E a senha "senha@123"
            Então devo ser redirecionado para a tela de checkout

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
            Quando eu digitar o usuário "tryrtyrty@gmail.com"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir uma <mensagem> 

            Exemplos:
            | usuario             | senha       | mensagem    |
            | "joao@ebac.com.br"  | "teste@123" | "Olá João"  |
            | "maria@ebac.com.br" | "teste@123" | "Olá Maria" |
            | "yututyu@ebac.com.br"  | "teste@123" | "Usuário ou senha inválidos"  |

