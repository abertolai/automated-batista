class UsuariosCadastrados

    include Capybara::DSL

    def find_tabela_lista_usuarios
        find(:xpath, "//tbody")
    end

    def go_next_page(i)
        find("[class='next'] a[href='/users?page=#{i}']").click
    end

    def get_linhas_tabela
        find_tabela_lista_usuarios.all("tr")
    end

    def get_colunas_linha(linha)
        linha.all('td')
    end

    def get_btn_carregar_usuario(linha)
        linha.find("a", :text => "search")
    end

    def get_btn_remover_usuario(linha)
        linha.find("a", :text => "delete")
    end

    def get_btn_editar_usuario(linha)
        linha.find("a", :text => "edit")
    end

    def carregar_usuario(user)
        linha = get_linha_usuario(user)
        get_btn_carregar_usuario(linha).click
    end

    def remover_usuario(user)
        linha = get_linha_usuario(user)
        get_btn_remover_usuario(linha).click
    end

    def editar_usuario(user)
        linha = get_linha_usuario(user)
        get_btn_editar_usuario(linha).click
    end

    def get_linha_usuario(user)
        linhas = get_linhas_tabela()
        linhas.each do |row|
            colunm = get_colunas_linha(row)
            if (colunm[0].text == user[:nome] && colunm[1].text == user[:ultimo_nome] && colunm[2].text == user[:email] && colunm[3].text == user[:universidade])
                return row
            end
        end
        return ""
    end
    
    def click_accept_alert
        page.accept_alert
    end
end
