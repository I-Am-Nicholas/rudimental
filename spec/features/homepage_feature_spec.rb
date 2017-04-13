require 'rails_helper'

feature 'homepage' do

  context 'when user visits website' do
    scenario 'should display a button to generate cuss words' do
      visit '/'
      expect(page).to have_button 'Generate Rudeness!'
    end
  end

  context 'User clicks Generate Rudeness!' do

    # before do
    #   Cussword.create(word: 'Duckmaster')
    # end

    scenario 'display rudeness' do
      visit '/'
      click_button 'Generate Rudeness'
      expect(current_path).to eq '/cusswords'
      # expect(page).to have_content('Hungarian translation')
    end

  end

end
