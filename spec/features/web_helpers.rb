def sign_in_and_play

  visit('/')
  fill_in :player_one_name, with: 'Alex'
  fill_in :player_two_name, with: 'Rosie'
  click_button 'Submit'

end