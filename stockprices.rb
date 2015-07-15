
random = (40..70).to_a.shuffle
same = Array.new(20, 80)
lose_money = (5..20).to_a.reverse
def maximum_profit(stock_prices)
  min_price = [stock_prices.index(stock_prices.min), stock_prices.min]
  max_profit = 0
  stock_prices.each_with_index do |price, index|
    if index > min_price[0]
      potential_profit = price - min_price[1]
      max_profit = [potential_profit, max_profit].max
    end
  end
  max_profit
end

p maximum_profit(random)
p maximum_profit(same)
p maximum_profit(lose_money)
