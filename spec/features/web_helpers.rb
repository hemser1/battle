def sign_and_play
  visit('/')
  fill_in 'player_1', with: 'Bob'
  fill_in 'player_2', with: 'Dave'
  click_button 'Submit'
end
