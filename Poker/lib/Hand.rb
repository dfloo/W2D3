class Hand
  attr_reader :cards, :deck
  
  def initialize(deck)
    @cards = []
    @deck = deck
  end
  
  def add_card
    @cards << @deck.draw_card
  end
  
  def discard(index)
    @cards.delete_at(index)
  end
end