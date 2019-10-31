
feature 'Entering Players' do
  scenario 'Can view player form' do
    sign_in_and_play
    expect(page).to have_content "Ali vs. Muna"
  end
end

feature 'Hitpoints' do
  scenario 'Can view initial hitpoint values' do
    sign_in_and_play
    expect(page).to have_content "Muna's hitpoints = 60HP"
  end
end
