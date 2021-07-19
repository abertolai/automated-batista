class Youtube

    include Capybara::DSL

    attr_reader :canal

    def initialize
        @canal = find(:xpath, "//div[@id='text-container'] //yt-formatted-string[@id='text'][@class='style-scope ytd-channel-name']")
    end

    def getTextCanal
        @canal.text
    end
    
end
