require 'player'

describe 'Player' do 

  subject(:tom) { Player.new('Tom') }
  subject(:adam) { Player.new('Adam') }

  describe '#name' do 
    it 'returns the name of the player when called' do 
      expect(tom.name).to eq ("Tom")
    end 
  end 


  describe '#attack' do 
    it 'reduces an enemy player by 10hp' do 
      tom.attack(adam)
      expect(adam.hp).to eq (90)
    end 
  end 
end 
