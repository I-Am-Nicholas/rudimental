require 'rails_helper'

feature 'homepage' do

  context 'User wants to get rude!' do

    before do
      Cussword.new(word: 'Duckmaster')
    end

    scenario 'displays rudeness' do
      visit '/'
      find('#mild').click
      find('#sub').click
      expect(page).to have_content('Duckmaster')
    end

  end

    scenario 'displays a ratings selector' do
      visit '/'
      expect(page).to have_content('mild')
      expect(page).to have_content('temperate')
      expect(page).to have_content('severe')
    end

    scenario 'display rudeness' do
      visit '/'
      find('#sub').click
      expect(page).to have_content('Please click an option.')
    end


end
