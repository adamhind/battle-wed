feature "attack an enemy" do 
  scenario "When player 1 attacks player 2 it will give a confirmation" do 
    sign_in_and_play
     click_button ('attack') 
    expect(page).to have_content "Tom attacked Adam"
  end 
end 