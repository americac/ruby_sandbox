counter = 10

def report
  puts "In Report"
  # the variable counter is none existent at this point and will throw an error
  #puts counter
  counter = 5
  puts counter
  puts "Leaving Report"
end

report

puts counter

def report_message(counter)
  message = if counter > 5
    "Counter is greater than 5"
  else
    "Counter is less than 5"
  end
end

report_message(counter)
