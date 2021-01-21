feature 'Attacking' do 
    scenario 'ataack player 2' do 
        input_names_to_play
        click_link 'LETS PLAY!'
        expect(page).to have_content 'Bridge please choose your weapon!'
    end 
end