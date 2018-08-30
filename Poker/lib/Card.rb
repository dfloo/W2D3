class Card
  attr_reader :suit, :value 
  
  def initialize(value, suit)
    @value, @suit = value, suit
  end
  
  def inspect
    "card value = #{value} suit = #{suit}"
  end
end