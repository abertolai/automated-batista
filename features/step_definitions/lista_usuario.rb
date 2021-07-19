Dado('clico no link para listar usuários') do
    @home.click_link_lista_usuarios
end

Quando('eu encontre um usuário com os dados:') do |table|
    @user = table.rows_hash

    @usuarios_cadastrados = UsuariosCadastrados.new()

    linha_usuario = @usuarios_cadastrados.get_linha_usuario(@user)
    i = 2
    while linha_usuario == ""
        @usuarios_cadastrados.go_next_page(i)
        linha_usuario = @usuarios_cadastrados.get_linha_usuario(@user)
        i = i + 1
    end
    @usuarios_cadastrados.carregar_usuario(@user)
end

Dado('eu encontre um usuário com os dados abaixo e clique no botão editar:') do |table|
    @user = table.rows_hash

    @usuarios_cadastrados = UsuariosCadastrados.new()
    linha_usuario = @usuarios_cadastrados.get_linha_usuario(@user)
    i = 2
    while linha_usuario == ""
        @usuarios_cadastrados.go_next_page(i)
        linha_usuario = @usuarios_cadastrados.get_linha_usuario(@user)
        i = i + 1
    end
    @usuarios_cadastrados.editar_usuario(@user)
end
  
Quando('eu informar os valores novos nos campos:') do |table|
    @user = table.rows_hash

    @usuarios = Usuarios.new()
    @usuarios.set_nome(@user[:nome])
    @usuarios.set_ultimo_nome(@user[:ultimo_nome])
    @usuarios.set_email(@user[:email])
    @usuarios.set_endereco(@user[:endereco])
    @usuarios.set_universidade(@user[:universidade])
    @usuarios.set_profissao(@user[:profissao])
    @usuarios.set_genero(@user[:genero])
    @usuarios.set_idade(@user[:idade])

    @usuarios.click_button_criar
end

Quando('eu encontre um usuário com os dados abaixo e clique no botão deletar:') do |table|
    @user = table.rows_hash

    @usuarios_cadastrados = UsuariosCadastrados.new()
    linha_usuario = @usuarios_cadastrados.get_linha_usuario(@user)
    i = 2
    while linha_usuario == ""
        @usuarios_cadastrados.go_next_page(i)
        linha_usuario = @usuarios_cadastrados.get_linha_usuario(@user)
        i = i + 1
    end
    @usuarios_cadastrados.remover_usuario(@user)
    @usuarios_cadastrados.click_accept_alert
    sleep 5
end