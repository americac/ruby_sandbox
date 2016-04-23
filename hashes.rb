protons = {"H" => 1, "Li" => 3, "Ne" => 10}
puts protons.class
puts protons.inspect
puts protons.length
puts protons.has_key?('Ne')
puts protons.has_key?('X')
puts protons.has_value?(3)
puts protons.has_value?(5)


protons.each do |element, count|
  puts "#{element}: #{count}"
end

def area(options)
  options[:length] * options[:width]
end
puts area({:length => 2, :width => 4})
