
require_relative '../spec_helper.rb'

feature 'Enter player names' do
  scenario 'should request names for 2 players and retun them to page' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Alex and Rosie to battle!' 
    
  end
end

