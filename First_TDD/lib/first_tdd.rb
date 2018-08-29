class Array
  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end
  
  def two_sum
    result = []
    self.each_with_index do |el, idx|
      (idx + 1...self.length).each do |idx2|
        result << [idx, idx2] if self[idx] + self[idx2] == 0 
      end
    end
    result
  end
  
  def my_transpose
    result = Array.new(self.length) {[]}
    self.each_with_index do |el, idx|
      el.each_index do |idx2|
        result[idx][idx2] = self[idx2][idx]
      end
    end
    result
  end
  
  def stock_picker
    result = [1, 0]
    trade_val = self[1] - self[0]
    self.each_with_index do |el,idx|
      (idx + 1...self.length).each do |idx2|
        if self[idx2] - self[idx] > trade_val
          result = [idx, idx2]
          trade_val = self[idx2] - self[idx] 
        end  
      end
    end 
    result
  end
end