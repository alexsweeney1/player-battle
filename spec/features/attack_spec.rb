require_relative '../spec_helper.rb'

feature 'Players can attack each other' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Alex attacked Rosie'
  end

  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Continue'
    expect(page).to have_content 'Rosie: 90HP'
  end
end