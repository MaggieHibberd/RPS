feature 'choose weapon - draw' do 
    scenario 'make choice of R, P or S' do 
        input_names_to_play
        click_link 'LETS PLAY!'
        fill_in :choice_1, with: 'Paper'
        fill_in :choice_2, with: 'Paper'
        click_button 'Submit'
        expect(page).to have_content 'Its a draw!'
    end 
end 