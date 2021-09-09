            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto: Dado que eu acesse a página de produtos do portal EBAC

            Cenário: Seleção de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu escolher uma cor, tamanho e quantidade "Azul, M e 2"
            Então deve ser possível inserir no carrinho

            Cenário: Apenas 10 produtos por venda - válido
            Quando eu escolher uma quantidade "10"
            Então deve ser possível inserir no carrinho

            Cenário: Apenas 10 produtos por venda - inválido
            Quando eu escolher uma quantidade "12"
            Então não deve ser possível inserir no carrinho

            Cenário: Quando clicar no botão "limpar" deve voltar ao estado original
            Quando eu selecionar um produto com a cor, tamanho e quantidade
            E escolher a opção "limpar"
            Então deve remover as configurações e voltar ao estado original

            Esquema do Cenário: Selecionar 10 produtos
            Quando eu selecionar o <produto>
            E a <quantidade>
            Então deve ser possível <inserir> no carrinho

            Exemplos:
            | produto  | quantidade | inserir |
            | Jacket   | "3"        | "true"  |
            | Jacket 2 | "8"        | "true"  |
            | Jacket 3 | "11"       | "false" |
