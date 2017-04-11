require 'rails_helper'

feature 'homepage' do

  context 'when user visits website' do
    scenario 'should display a button to generate cuss words' do
      visit '/'
      expect(page).to have_button 'Generate Rudeness!'
    end
  end

  context 'User clicks Generate Rudeness!' do

    before do
      Cussword.create(word: 'Duckmaster', rating: 1)
      Cussword.create(word: 'Fuckmaster', rating: 5)
    end

    scenario 'display rudeness' do
      visit '/cusswords'
      expect(page).to have_content('Duckmaster')
    end

  end

    scenario 'displays a ratings selector' do
      visit '/cusswords'
      expect(page).to have_css('div#rating')
    end
end
