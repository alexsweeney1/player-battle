# fill_in('Player One', with: 'Rosie')
# fill_in('Player Two', with: 'Alex')

feature 'Enter player names' do
  scenario 'should request names for 2 players and retun them to page' do
    visit('/')
    fill_in :playerone, with: 'Alex'
    fill_in :playertwo, with: 'Rosie'
    click_button 'Submit'

    expect(page).to have_content 'Welcome Alex and Rosie to battle!' 
    
  end
end

