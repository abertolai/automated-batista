#language: pt

Funcionalidade: Criação de usuários

    Contexto: Acessar a página home
        * Acesso a página home

    Cenário: Cadastrar usuário com sucesso
        Dado que clico na lista de funcionalidades chamada "Formulário"
        E clico no link para criar usuários
        Quando submeto o meu cadastro com:
            | nome           | Amanda                      |
            | ultimo_nome    | Oliveira                    |
            | email          | aninha@yahoo.com            |
            | endereco       | Rua Tenente João Dias, Alto |
            | universidade   | UEM                         |
            | profissao      | Analista                    |
            | genero         | Feminino                    |
            | idade          | 25                          |
        Então deve apresentar a mensagem "Usuário Criado com sucesso"
        E deve retornar todos os dados cadastrados do usuário

    Cenário: Cadastrar usuário com sucesso preenchendo apenas os campos obrigatórios
        Dado que clico na lista de funcionalidades chamada "Formulário"
        E clico no link para criar usuários
        Quando submeto o meu cadastro com:
            | nome           | Luiz                        |
            | email          | luiz@yahoo.com              |
        Então deve apresentar a mensagem "Usuário Criado com sucesso"
        E deve retornar todos os dados cadastrados do usuário

    Esquema do Cenário: Tentativa de cadastro de usuário
        Dado que clico na lista de funcionalidades chamada "Formulário"
        E clico no link para criar usuários
        Quando submeto o meu cadastro com:
            | nome        | <nome>        |
            | ultimo_nome | <ultimo_nome> |
            | email       | <email>       |
        Então deve apresentar uma mensagem de validação que contenha "<mensagem_geral>", "<mensagem_n1_campo>" e "<mensagem_n2_campo>"

            Exemplos:
                | nome   | email               | mensagem_geral                                | mensagem_n1_campo                                                                         | mensagem_n2_campo                                                                         |
                |        | junqueira@yahoo.com | 1 error proibiu que este usuário fosse salvo  | Name translation missing: pt-BR.activerecord.errors.models.user.attributes.name.blank     |                                                                                           |
                | Lorena | lorena              | 1 error proibiu que este usuário fosse salvo  | Email translation missing: pt-BR.activerecord.errors.models.user.attributes.email.invalid |                                                                                           |
                | Silvia |                     | 2 errors proibiu que este usuário fosse salvo | Email translation missing: pt-BR.activerecord.errors.models.user.attributes.email.blank   | Email translation missing: pt-BR.activerecord.errors.models.user.attributes.email.invalid |
                |        |                     | 3 errors proibiu que este usuário fosse salvo | Name translation missing: pt-BR.activerecord.errors.models.user.attributes.name.blank     | Email translation missing: pt-BR.activerecord.errors.models.user.attributes.email.blank   |                
                