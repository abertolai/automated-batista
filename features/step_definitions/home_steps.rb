Dado("que acesso a página home") do
    visit "/"
end

Quando('clico no botão {string}') do |btnClick|
    @home_page = Home.new()
    @home_page.click_button(btnClick)
end
  
Então('devo ser redirecionado para a página de consultoria') do
    @consultoria = Consultoria.new()
    expect(@consultoria.getLinkTextSobreConsultoria).to eql "SOBRE A CONSULTORIA"
    expect(page).to have_title("Consultoria Batista")
end

Então('devo ser redirecionado para a Udemy onde dentro da pagina contenha o título {string} e subtitulo {string}') do |titulo, subtitulo|
    @udemy = Udemy.new()
    expect(@udemy.getTextTitle).to eql titulo
    expect(@udemy.getTextSubtitle).to eql subtitulo
end

Então('devo ser redirecionado para o Youtube no canal do {string} com o título da página {string}') do |canal, titulo|
    @youtube = Youtube.new()
    expect(@youtube.getTextCanal).to eql canal
    expect(page).to have_title(titulo)
end

Então('devo ser redirecionado para o Medium onde dentro da pagina contenha o título {string} e subtitulo {string}') do |titulo, subtitulo|
    @medium = Medium.new()
    expect(@medium.getTextTitle).to eql titulo
    expect(@medium.getTextSubtitle).to eql subtitulo
end
