require_relative '../spec_helper.rb'

feature 'Can view player 2\'s hit points' do
  scenario 'Can see player 2\'s hit points after entering names' do
    sign_in_and_play
    expect(page).to have_content 'Rosie: 100HP' 
  end
end