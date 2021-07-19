class Home

    include Capybara::DSL

    def open_home_page
       visit "/"
    end

    def busca_funcionalidade(button)
        find('a', text: button)
    end

    def busca_link_criar_usuarios
        find("a[href='/users/new'")
    end

    def busca_link_lista_usuarios
        find("a[href='/users")
    end

    def click_button(btnClick)
        click_on btnClick
    end

    def click_funcionalidade(button)
        busca_funcionalidade(button).click
    end

    def click_link_criar_usuarios
        busca_link_criar_usuarios.click
    end

    def click_link_lista_usuarios
        busca_link_lista_usuarios.click
    end
    
end
