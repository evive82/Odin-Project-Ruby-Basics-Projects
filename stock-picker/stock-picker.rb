def stock_picker prices
  buy_sell = [0,0]
  prices.each do |price|
    buy_index = prices.index(price)
    sell_index = prices.index(prices[buy_index..-1].sort.last)
    if prices[sell_index] - prices[buy_index] > prices[buy_sell[1]] - prices[buy_sell[0]]
      buy_sell[0] = buy_index
      buy_sell[1] = sell_index
    end
  end
  buy_sell
end

puts stock_picker([17,3,6,9,15,8,6,1,10])