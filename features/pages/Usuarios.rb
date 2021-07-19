class Usuarios

    include Capybara::DSL

    def find_textbox_nome
        find("#user_name")
    end

    def find_textbox_ultimo_nome
        find("#user_lastname")
    end

    def find_textbox_email
        find("#user_email")
    end

    def find_textbox_endereco
        find("#user_address")
    end

    def find_textbox_universidade
        find("#user_university")
    end

    def find_textbox_genero
        find("#user_gender")
    end

    def find_textbox_profissao
        find("#user_profile")
    end

    def find_textbox_idade
        find("#user_age")
    end

    def find_message
        find("#notice")
    end

    def set_nome(table)
        find_textbox_nome.set table
    end

    def set_ultimo_nome(table)
        find_textbox_ultimo_nome.set table
    end

    def set_email(table)
        find_textbox_email.set table
    end

    def set_endereco(table)
        find_textbox_endereco.set table
    end

    def set_universidade(table)
        find_textbox_universidade.set table
    end

    def set_profissao(table)
        find_textbox_profissao.set table
    end

    def set_genero(table)
        find_textbox_genero.set table
    end

    def set_idade(table)
        find_textbox_idade.set table
    end

    def click_button_criar
        click_button "Criar"
    end

end
