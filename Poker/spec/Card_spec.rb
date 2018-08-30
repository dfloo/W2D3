require 'Card.rb'

RSpec.describe do
  subject(:card) { Card.new(:A, :S) }
  describe '#initialize' do
    it 'sets a value for the card' do
      expect(card.value).to eq(:A) 
    end
    
    it 'sets a suit for the card' do
      expect(card.suit).to eq(:S)
    end
  end
  
end