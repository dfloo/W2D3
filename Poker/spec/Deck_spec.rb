require 'Deck.rb'

RSpec.describe do
  subject(:deck) { Deck.new }
  
  describe '#initialize' do
    it 'contains an array of 52 cards' do
      expect(deck.stack.length).to eq(52)
      expect(deck.stack.all?{ |card| card.is_a?(Card)}).to be(true)
    end
    it "doesn't have repeat cards" do
      expect(deck.stack.uniq).to eq(deck.stack)
    end
  end
  
  describe '#shuffle' do
    it 'randomly shuffles the cards' do
      unshuffled = deck.stack.dup
      deck.shuffle
      expect(deck.stack).to_not eq(unshuffled)
    end
  end
  
  describe '#draw_card' do
    it 'takes the top card from the deck' do
      expect(deck.draw_card.is_a?(Card)).to be(true)
    end
    
    it 'decreases the size of the deck stack by one' do
      my_card = deck.draw_card
      expect(deck.stack.length).to eq(51)
    end
  end
end