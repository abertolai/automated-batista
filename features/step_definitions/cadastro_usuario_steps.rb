Dado('Acesso a página home') do
    @home = Home.new()
    @home.open_home_page
end

Dado('que clico na lista de funcionalidades chamada {string}') do |btnClick|
    @home.click_funcionalidade(btnClick)
end

Dado('clico no link para criar usuários') do
    @home.click_link_criar_usuarios
end

Quando('submeto o meu cadastro com:') do |table|
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

Então('deve apresentar a mensagem {string}') do |mensagem|
    expect(page).to have_text mensagem
end

Então('deve retornar todos os dados cadastrados do usuário') do
    if !@user[:nome].nil?
        expect(page).to have_text @user[:nome]
    end

    if !@user[:ultimo_nome].nil?
        expect(page).to have_text @user[:ultimo_nome]
    end

    if !@user[:email].nil?
        expect(page).to have_text @user[:email]
    end

    if !@user[:endereco].nil?
        expect(page).to have_text @user[:endereco]
    end

    if !@user[:universidade].nil?
        expect(page).to have_text @user[:universidade]
    end

    if !@user[:profissao].nil?
        expect(page).to have_text @user[:profissao]
    end

    if !@user[:genero].nil?
        expect(page).to have_text @user[:genero]
    end

    if !@user[:idade].nil?
        expect(page).to have_text @user[:idade]
    end
end

Então('deve apresentar uma mensagem de validação que contenha {string}, {string} e {string}') do |mensagem_geral, mensagem_n1_campo, mensagem_n2_campo|
    expect(page).to have_text mensagem_geral
    expect(page).to have_text mensagem_n1_campo

    if !mensagem_n2_campo.nil?
        expect(page).to have_text mensagem_n2_campo
    end
end
