
feature "Naming players" do 
  scenario "players can nter names by submitting a form" do 
    sign_in_and_play
    expect(page).to have_text("Tom will now play Adam")
  end 
end 