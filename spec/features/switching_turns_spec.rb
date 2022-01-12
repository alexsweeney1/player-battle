feature 'Switching turns in battle' do
  scenario 'Player one\'s turn is first' do
    sign_in_and_play
    expect(page).to have_content "Alexs turn"
  end

  scenario 'Player 2 attacks next' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Continue'
    expect(page).to have_content "Rosies turn"
  end


end

