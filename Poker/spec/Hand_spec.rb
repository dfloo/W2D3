require "Hand.rb"

RSpec.describe do
  let(:my_deck) { double("my_deck", :draw_card => "any card") }
  subject(:hand) { Hand.new(my_deck) }
  
  describe '#initialize' do
    it 'should start with an empty hand' do
      expect(hand.cards).to be_empty
    end
    it 'should accept a deck argument' do
      expect(hand.deck).to eq(my_deck)
    end
  end
  
  describe '#add_card'do
    it 'should draw a card from the deck' do
      hand.add_card
      expect(hand.cards.length).to eq(1)
    end
  end
  
  describe '#discard' do
    it 'should decrease the size of the hand by one' do
      hand.add_card
      hand.discard(0)
      expect(hand.cards).to be_empty
    end
  end
  
  describe '#hand_type' do
    it 'should return a string describing the hand type'
  end
  
  describe '#hand_value' do
    it 'should return the value of the hand'
  end
  
end
