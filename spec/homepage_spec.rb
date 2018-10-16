require_relative '../app'
require 'selenium-webdriver'
require 'spec_helper'
ENV['RACK_ENV'] = 'test'

describe Battle do

  # @browser = Selenium::WebDriver.for :firefox
  # @browser.get "localhost:9292"
  #
  # let(:browser) {@browser}

  feature "homepage" do
    before do
      visit '/'
    end

    scenario 'user sees a greeting' do
      expect(page).to have_content("This is a game of BATTLE!")
    end
  end

end
