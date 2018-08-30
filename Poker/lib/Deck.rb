require_relative 'Card.rb'

class Deck 
  attr_reader :stack
  
  SUITS = [:H, :D, :S, :C].freeze
  
  FACE_VALUES = {
    "#{2}": 2,
    "#{3}": 3,
    "#{4}": 4,
    "#{5}": 5,
    "#{6}": 6,
    "#{7}": 7,
    "#{8}": 8,
    "#{9}": 9,
    "#{10}": 10,
    J: 11,
    Q: 12,
    K: 13,
    A: 14
  }.freeze
  
  def initialize
    @stack = populate
  end 
  
  def shuffle
    @stack.shuffle!
  end
  
  def draw_card
    @stack.pop
  end
  
  private 
  
  def populate
    result = []
    
    SUITS.each do |suit|
      FACE_VALUES.keys.each do |value|
        result << Card.new(value,suit)
      end
    end
    result
  end
  
end