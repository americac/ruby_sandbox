def calculate
  amount = 0
  prices.each do |price| yield end
  amount
end

def total(prices)
  amount = 0
  prices.each do |price| amount += price end
  amount
end

def refund(prices)
  amount = 0
  prices.each do |price| amount -= price end
  amount
end

def show_discounts(prices)
  amount_off = nil
  prices.each do |price|
    amount_off = price / 3.0
    puts format("Your discount is: %.2f", amount_off)
  end
end
prices = [3.00, 25.00, 8.99]
puts format('%.2f', total(prices))
puts format('%.2f', refund(prices))
show_discounts(prices)

#calculate do|prices|
#  amount -= prices[index]
#end
#puts format('%.2f', total_amount)
