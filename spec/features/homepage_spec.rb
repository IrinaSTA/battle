require 'spec_helper'

ENV['RACK_ENV'] = 'test'

describe Battle do

  feature "homepage" do

    scenario 'user sees a greeting on homepage' do
      visit('/')
      expect(page).to have_content("This is a game of BATTLE!")
    end

    before do
      sign_in_and_play
    end

    scenario "users can submit names and see a welcome" do
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
