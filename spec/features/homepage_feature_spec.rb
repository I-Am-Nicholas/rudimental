require 'rails_helper'

feature 'homepage' do
  context 'when user visits website' do
    scenario 'should display a button to generate cuss words' do
      visit '/'
      expect(page).to have_button 'Generate rudeness!'
    end
  end
end
