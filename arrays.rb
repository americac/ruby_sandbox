def total(prices)
  amount = 0
  index = 0
  while index < prices.length
    amount += prices[index]
    index += 1
  end
  amount
end

def refund(prices)
  amount = 0
  index = 0
  while index < prices.length
    amount -= prices[index]
    index += 1
  end
  amount
end
prices = [3.00, 25.00, 8.99]
puts format('%.2f', total(prices))
puts format('%.2f', refund(prices))