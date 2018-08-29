require 'towers_of_hanoi.rb'

RSpec.describe do
  subject(:game) { TowersOfHanoi.new }
  
  describe '#initialize' do
    it 'initializes the board with 3 discs at index 0' do
      expect(game.board).to eq([[3,2,1], [], []])
    end
  end
  
  describe '#move' do 
    it 'raises an error if you move from an empty tower' do
      expect{ game.move(1,2) }.to raise_error('There is no disc at this tower.')
    end
    
    it 'raises an if error if you attempt to place a larger disc on a smaller disc' do
      game.move(0,1)
      expect{ game.move(0,1) }.to raise_error('Cannot place larger disc onto smaller disc.')
    end
    
    it 'makes a valid move' do 
      game.move(0, 1)
      expect(game.board[1]).not_to be_empty 
    end
  end
  
  describe '#won' do
    it 'returns true if all disks are placed on either tower one or two' do
      game.move(0,1)
      game.move(0,2)
      game.move(1,2)
      game.move(0,1)
      game.move(2,0)
      game.move(2,1)
      game.move(0,1)
      expect(game).to be_won
    end
  end
end