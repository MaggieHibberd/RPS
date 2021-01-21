feature 'choose weapon' do 
    scenario 'make choice of R, P or S' do 
        input_names_to_play
        click_link 'LETS PLAY!'
        fill_in :choice_1, with: 'Paper'
        fill_in :choice_2, with: 'Rock'
        click_button 'Submit'
        expect(page).to have_content 'June Won!'
    end 
end 
