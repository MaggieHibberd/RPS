def input_names_to_play
    visit('/')
    fill_in :player_1, with: 'June'
    fill_in :player_2, with: 'Bridge'
    click_button 'Submit'
end