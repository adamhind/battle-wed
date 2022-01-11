feature "Testing infa" do
  scenario "Can run app and check page" do
    visit("/")
    expect(page).to have_content "Testing infrastructure working!"
  end
end

feature "Naming players" do 
  scenario "players can nter names by submitting a form" do 
    visit('/')
    fill_in('player_one', with: 'Tom')
    fill_in('player_two', with: 'Adam')
    click_button('Play')
    expect(page).to have_text("Tom will now play Adam")
  end 
end 