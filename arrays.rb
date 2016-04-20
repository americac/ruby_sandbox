def total(prices)
  amount = 0
  index = 0
  while index < prices.length
    amount += prices[index]
    index += 1
  end
  amount
end

prices = [3.00, 25.00, 8.99]
total_cost = total(prices)
puts format('%.2f', total_cost)
