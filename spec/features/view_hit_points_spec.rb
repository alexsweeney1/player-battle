feature 'Can view player 2\'s hit points' do
  scenario 'Can see player 2\'s hit points after entering names' do
    visit('/')
    fill_in :playerone, with: 'Alex'
    fill_in :playertwo, with: 'Rosie'
    click_button 'Submit'

    expect(page).to have_content 'Rosie: 100HP' 
  end
end