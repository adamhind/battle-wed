def sign_in_and_play
  visit('/')
  fill_in('player_one', with: 'Tom')
  fill_in('player_two', with: 'Adam')
  click_button('Play')
end