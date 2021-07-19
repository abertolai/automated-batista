#language: pt

Funcionalidade: Consultoria do Batista

    Cenário: Abrir consultoria do Batista
        Dado que acesso a página home
        Quando clico no botão "Consultoria do Batista"
        Então devo ser redirecionado para a página de consultoria

    Esquema do Cenário: Abrir curso da Udemy
        Dado que acesso a página home
        Quando clico no botão "<botao>"
        Então devo ser redirecionado para a Udemy onde dentro da pagina contenha o título "<titulo>" e subtitulo "<subtitulo>"

        Exemplos:
            | botao             | titulo                                            | subtitulo                                                                   |
            | Curso de HTTParty | Testes automatizados de Api com Httparty + Rspec  | Curso para fazer Automação de uma API utilizando Httparty, rspec e ruby.    |
            | Curso de Capybara | Automação de Testes com Capybara, Cucumber e Ruby | Curso para fazer Automação de um site utilizando capybara, cucumber e ruby. |
    
    Cenário: Abrir Batista no Youtube
        Dado que acesso a página home
        Quando clico no botão "Batista no Youtube"
        Então devo ser redirecionado para o Youtube no canal do "bruno batista" com o título da página "bruno batista - YouTube"

    Cenário: Abrir Batista no Medium
        Dado que acesso a página home
        Quando clico no botão "Batista no Medium"
        Então devo ser redirecionado para o Medium onde dentro da pagina contenha o título "Automação com Batista." e subtitulo "Tudo sobre automação Web,Mobile e Serviços."
