class Medium
    
    include Capybara::DSL

    attr_reader :title, :subtitle

    def initialize
        @title = find(:xpath, "//h1[contains(@class, 'collectionHeader-name')]")
        @subtitle = find(:xpath, "//h2[contains(@class, 'collectionHeader-description')]")
    end

    def getTextTitle
        @title.text
    end

    def getTextSubtitle
        @subtitle.text
    end
    
end
