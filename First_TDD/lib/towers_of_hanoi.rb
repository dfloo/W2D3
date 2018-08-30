class TowersOfHanoi
  attr_accessor :board
  
  def initialize
    @board = [[3,2,1],[],[]]
  end
  
  def move(from, to)
    raise 'There is no disc at this tower.' if @board[from].empty?
    unless @board[to].empty?
      raise 'Cannot place larger disc onto smaller disc.' if @board[from].last > @board[to].last
    end
    @board[to].push(@board[from].pop)
  end
  
  def won?
    @board[1..-1].any? { |el| el.length == 3 }
  end
end