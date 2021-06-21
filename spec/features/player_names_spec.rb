feature "entering player names" do
  scenario "players submit names in form" do
    visit "/"
    fill_in("player1", with: "Alex")
    fill_in("player2", with: "Emma")
    click_button("Submit")
    expect(page).to have_content("Alex vs Emma")
  end
end