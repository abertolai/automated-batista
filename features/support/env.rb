require "capybara"
require "capybara/cucumber"
require "page-object"
require "rspec"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://automacaocombatista.herokuapp.com/treinamento/home"
end
