class Consultoria

    include Capybara::DSL

    attr_reader :linkSobreConsultoria

    def initialize
        @linkSobreConsultoria = find("[id='navbarResponsive'] a[href='#about']")
    end

    def getLinkTextSobreConsultoria
        @linkSobreConsultoria.text
    end

end
