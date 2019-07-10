

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Enter Names'
  end
end

feature 'Enable players to enter names' do
  scenario 'testing name input from form' do
    sign_and_play
    expect(page).to have_content "Welcome to Battle, Bob & Dave!"
  end


end

feature 'hit points' do
  scenario 'can display player 1 hit points' do
    sign_and_play
    expect(page).to have_content "Bob HB points = 60"

  end
  scenario 'can display player 2 hit points' do
    sign_and_play
    expect(page).to have_content "Dave HB points = 60"
  end
  scenario 'reduces HP points after attack' do
    sign_and_play
    click_button('Attack')
    expect(page).to have_content "Dave HB points = 50"
  end

end

feature 'Attacking' do
  scenario 'Attacking player 2' do
    sign_and_play
    click_button('Attack')
    expect(page).to have_content "Bob attacked Dave"
  end
end
