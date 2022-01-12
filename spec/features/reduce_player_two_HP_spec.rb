feature "reduces player two's HP by 10" do 
  scenario 'player 1 attacks and player 2 loses 10 HP' do 
    sign_in_and_play
    click_button('attack')
    click_button('OK')
    expect(page).to_not have_content "Adam: 100HP"
    expect(page).to have_content "Adam: 90HP"

  end 
end 