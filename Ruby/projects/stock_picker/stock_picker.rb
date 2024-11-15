=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
#It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
> stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12

=end

def stock_picker(array)
  min_sorted = array.min(array.length)
  n = min_sorted.length
  return [] if n == 1 || n == 0 || array.uniq.length == 1 || array.sort.reverse == array
  profit_array = []
  for num in min_sorted
      min_index = array.index(num)
      comparison_array = array.slice(min_index+1,array.length)
      profit_array.push(comparison_array.max().to_i - num)
  end
  max_profit = profit_array.max()
  combinations = []
  
  profit_array.each_with_index do |profit, index|
    if profit == max_profit
      buy = min_sorted[index]
      sell = buy + max_profit
      combinations.push([array.index(buy), array.index(sell)])
    end
  end
  combinations.length == 1 ? combinations[0] : combinations
end

