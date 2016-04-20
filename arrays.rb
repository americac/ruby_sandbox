def calculate
  amount = 0
  index = 0
  while index < prices.length
    yield prices
  end
  amount
end

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

def show_discounts(prices)
  index = 0
  while index < prices.length
    amount_off = prices[index] / 3.0
    puts format('%.2f', amount_off)
    index += 1
  end
end
prices = [3.00, 25.00, 8.99]
puts format('%.2f', total(prices))
puts format('%.2f', refund(prices))
show_discounts(prices)

calculate do|prices|
  amount -= prices[index]
end
puts format('%.2f', total_amount)
