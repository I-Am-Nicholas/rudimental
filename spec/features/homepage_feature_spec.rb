require 'rails_helper'

feature 'homepage' do


  context 'Basic Display' do

    scenario 'displays rudeness' do
      visit '/'
      find('#PG13').click
      find('#sub').click
      expect(page).to have_css('div.response')
      # ...and rating indicator matches selected option?
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
      find('#sub').click
      expect(page).to have_content("Auto Mode: Severity set to 'PG 13'")
    end

  end


end
