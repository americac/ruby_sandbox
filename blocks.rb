def my_method(&my_block)
  puts "We are in the method called my_method and about to call my_block"
  my_block.call('Cairo', 'Berlin')
  puts "I just got back from calling my_block"
end

my_method do| arg1, arg2|
  puts "This is my block of stuff....and I got #{arg1} and #{arg2}"
end

## Use yield way, below is the same as above

def my_new_method
  yield 'Cairo', 'Berlin'
end

#This method for none one liners
my_new_method do |arg1, arg2|
  puts "This is my new block of stuff....and I got #{arg1} and #{arg2}"
  puts 'Some other stuff'
end

## This is another way of doing a block
# For one liner blocks only!
my_new_method { |arg1, arg2| puts "This is my NEW NEW block of stuff....and I got #{arg1} and #{arg2}" }

def print_block_result
  block_result = yield
  puts "BlockResult: #{block_result}"
end

print_block_result { 1 + 1}

print_block_result do
  "I'm not the last expresion, so I'm not the return value."
  "I'm the result!"
end

print_block_result { "I hated Truncated".include?("Truncated") }
