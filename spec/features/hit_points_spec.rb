feature "show hit points" do
  scenario "Show player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content "Adam: 100HP"
  end
end


