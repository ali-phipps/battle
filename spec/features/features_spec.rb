
feature 'Entering Players' do
  scenario 'Can view player form' do
    visit '/battle/'

    fill_in :Player_1, with: 'Ali'
    fill_in :Player_2, with: 'Muna'
    click_button 'Submit'
    expect(page).to have_content "Ali vs. Muna"
    # expect(page).to have_field("Player_1")
    # expect(page).to have_field("Player_2")
  end
end
