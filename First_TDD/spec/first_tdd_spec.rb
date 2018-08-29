require 'first_tdd.rb'

RSpec.describe do
  describe '#my_uniq' do
    it 'removes douplicate elements' do
      expect([1,2,2,4,5,3,3].my_uniq).to eq([1,2,4,5,3])
    end
  end
  
  describe '#two_sum' do
    it 'returns the index pairs where the values sum to 0' do
      expect([1,-1,2,-2,3,5].two_sum).to eq([[0,1], [2,3]])
    end
  end
  
  describe '#my_transpose' do
    it 'converts an array from row-oriented to column-oriented' do
      expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
  end
  
  describe '#stock_picker' do
    it 'returns the most profitable pair of days to buy and sell a stock' do
      expect([3, 24, 1, 98, 45, 100].stock_picker).to eq([2,5])
    end 
  end
end