
def sign_in_and_play
  visit '/battle/'
  fill_in :Player_1, with: 'Ali'
  fill_in :Player_2, with: 'Muna'
  click_button 'Submit'
end
