#review_file = File.open('reviews.txt')
#puts review_file.class

#lines = review_file.readlines
#puts "Line 4: #{lines[3]}"
#puts "Line 1: #{lines[0]}"
#review_file.close #close the file safely

#Open a file from within a block, automatically closes file for you!
lines = nil
File.open('reviews.txt') do |review_file|
  lines = review_file.readlines
end
puts "Line 3: #{lines[2]}"
puts "Line 5: #{lines[6]}"

relevant_lines = [] 
lines.each do |line|
  if line.include?("Truncated")
    relevant_lines << line
  end
end
puts relevant_lines
