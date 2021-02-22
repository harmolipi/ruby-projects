def stock_picker(stock_prices)
  profits = {}

  # check all valid profit possibilities
  stock_prices.each_with_index do |price1, index1|
    stock_prices.each_with_index do |price2, index2| 
      if index2 > index1
        profits[[index1, index2]] = price2 - price1
      end
    end
  end

  sorted = profits.sort_by { |days, profit| profit }.reverse
  sorted[0]
end

best_days = stock_picker([17,3,6,9,15,8,6,1,10])

puts "It's best to buy on day #{best_days[0][0]} and sell on day #{best_days[0][1]} for a profit of $#{best_days[1]}."