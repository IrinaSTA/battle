require_relative '../app'
require 'spec_helper'

ENV['RACK_ENV'] = 'test'

describe Battle do

  feature "homepage" do
    before do
      visit '/'
    end

    scenario 'user sees a greeting' do
      expect(page).to have_content("This is a game of BATTLE!")
    end

    scenario "users can submit names and see a welcome" do
      fill_in('name1', with: 'Caitlin')
      fill_in('name2', with: 'Irina')
      click_button("Submit")
      expect(page).to have_content("Welcome Caitlin and Irina")
    end
  end

  feature "view points" do
    scenario "User can see the opponents hit points" do
      visit '/play'
      expect(page).to have_content("45/60HP")
    end
  end
end
