require 'rails_helper'

feature 'homepage' do

  context 'when user visits website' do
    scenario 'should display a button to generate cuss words' do
      visit '/'
      expect(page).to have_button 'Generate Rudeness!'
    end
  end

  context 'when user clicks the button' do
    scenario 'should display a list of bad words' do
      visit '/'
      click_button 'Generate Rudeness!'
      expect(page).to have_content 'Schmuck!'
    end
  end

  before do
    Cussword.create(word: 'Duckmaster')
  end
  scenario 'display rudeness' do
    visit '/cusswords'
    expect(page).to have_content('Duckmaster')
  end
end
