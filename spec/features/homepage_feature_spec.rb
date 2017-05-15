require 'rails_helper'

feature 'homepage' do


  context 'Basic Display' do

    scenario 'displays rudeness' do
      visit '/'
      find('#PG13').click
      find('#sub').click
      expect(page).to have_css('div.response')
    end

  end


  context 'Rating' do

    scenario 'displays a ratings selector' do
      visit '/'
      expect(page).to have_content('Mildly Irritated')
      expect(page).to have_content('PG 13')
      expect(page).to have_content('Positively Livid')
    end

    scenario 'displays rudeness even without selected rating' do
      visit '/'
      find('#sub').click
      expect(page).to have_css('div.response')
    end

    scenario 'display rudeness' do
      visit '/'
      click_button 'Get Rude!'
      expect(current_path).to eq '/cusswords/show'
    end

  end


end
