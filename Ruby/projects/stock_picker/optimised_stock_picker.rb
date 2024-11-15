def stock_picker(prices)
    return [] if prices.length < 2
    
    best_buy = 0
    best_sell = 1
    max_profit = prices[1] - prices[0]
    
    min_price_idx = 0
    
    prices.each_with_index do |price, day|
      if day == 0
        next
      end
      
      # Update minimum price index if we find a lower price
      if prices[day - 1] < prices[min_price_idx]
        min_price_idx = day - 1
      end
      
      # Calculate current profit
      current_profit = price - prices[min_price_idx]
      
      # Update best buy/sell if we find better profit
      if current_profit > max_profit
        max_profit = current_profit
        best_buy = min_price_idx
        best_sell = day
      end
    end
    
    max_profit <= 0 ? [] : [best_buy, best_sell]
  end