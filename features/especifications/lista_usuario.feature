#language: pt

Funcionalidade: Lista de usuários  

    Contexto: Acessar a página home
        * Acesso a página home
    
    Cenário: Consultar usuário com sucesso
        Dado que clico na lista de funcionalidades chamada "Formulário"
        E clico no link para listar usuários
        Quando eu encontre um usuário com os dados:
            | nome           | Amanda                      |
            | ultimo_nome    | Oliveira                    |
            | email          | aninha@yahoo.com            |
            | endereco       | Rua Tenente João Dias, Alto |
            | universidade   | UEM                         |
            | profissao      | Analista                    |
            | genero         | Feminino                    |
            | idade          | 25                          |
        Então deve retornar todos os dados cadastrados do usuário
        
    Cenário: Editar usuário com sucesso
        Dado que clico na lista de funcionalidades chamada "Formulário"
        E clico no link para listar usuários
        E eu encontre um usuário com os dados abaixo e clique no botão editar:
            | nome           | Amanda                      |
            | ultimo_nome    | Oliveira                    |
            | email          | aninha@yahoo.com            |
            | endereco       | Rua Tenente João Dias, Alto |
            | universidade   | UEM                         |
            | profissao      | Analista                    |
            | genero         | Feminino                    |
            | idade          | 25                          |
        Quando eu informar os valores novos nos campos:
            | nome           | Amanda 2                        |
            | ultimo_nome    | Oliveira 2                      |
            | email          | amanda2@yahoo.com               |
            | endereco       | Rua Tenente João Dias 500, Alto |
            | universidade   | UEM 2                           |
            | profissao      | Analista 2                      |
            | genero         | Feminino 2                      |
            | idade          | 30                              |
        Então deve apresentar a mensagem "Seu Usuário foi Atualizado!"
        E deve retornar todos os dados cadastrados do usuário

    Cenário: Deletar usuário com sucesso
        Dado que clico na lista de funcionalidades chamada "Formulário"
        E clico no link para listar usuários
        Quando eu encontre um usuário com os dados abaixo e clique no botão deletar:
            | nome           | Amanda 2                        |
            | ultimo_nome    | Oliveira 2                      |
            | email          | amanda2@yahoo.com               |
            | endereco       | Rua Tenente João Dias 500, Alto |
            | universidade   | UEM 2                           |
            | profissao      | Analista 2                      |
            | genero         | Feminino 2                      |
            | idade          | 30                              |
        Então deve apresentar a mensagem "Seu Usuário foi removido com sucesso!"