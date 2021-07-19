class Udemy

    include Capybara::DSL

    attr_reader :title, :subtitle

    def initialize
        @title = find(:xpath, "//h1[@class='udlite-heading-xl clp-lead__title clp-lead__title--small']")
        @subtitle = find("[class='udlite-text-md clp-lead__headline']")
    end

    def getTextTitle
        @title.text
    end

    def getTextSubtitle
        @subtitle.text
    end

end
