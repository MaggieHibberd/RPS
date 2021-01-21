require 'player'
require 'game'
describe Game do 

  describe '#choice' do 
  
    it 'returns the weapon' do 
      game = Game.new('Dave', 'June')
      game.playerone.choice = 'rock' 
      game.playertwo.choice = 'rock'
      # allow(game.playerone).to receive(:choice).and_return(:scissors)
      # allow(game.playertwo).to receive(:choice).and_return(:scissors)
      expect(game.draw?).to eq true

    end 
  end 
end 
