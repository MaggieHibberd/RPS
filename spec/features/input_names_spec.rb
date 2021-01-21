feature 'Enter names' do
    scenario 'input player names' do
        input_names_to_play
      expect(page).to have_content 'June vs. Bridge'
    end
  end