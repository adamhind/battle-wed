require 'player'

describe 'Player' do 

  describe '#name' do 
    it 'returns the name of the player when called' do 
      test_player = Player.new("Adam")
      expect(test_player.name).to eq ("Adam")
    end 
  end 

end 
