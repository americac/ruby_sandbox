#review_file = File.open('reviews.txt')
#puts review_file.class

#lines = review_file.readlines
#puts "Line 4: #{lines[3]}"
#puts "Line 1: #{lines[0]}"
#review_file.close #close the file safely

#Open a file from within a block, automatically closes file for you!
lines = []
File.open('reviews.txt') do |review_file|
  lines = review_file.readlines
end
puts "Line 3: #{lines[2]}"
puts "Line 5: #{lines[6]}"

#relevant_lines = []
#lines.each do |line|
#  if line.include?("Truncated")
#    relevant_lines << line
#  end
#end

#This is the same as above, much cleaner and faster
relevant_lines = lines.find_all { |line| line.include?('Truncated') }
puts relevant_lines

def find_adjective(string)
  words = string.split(" ")
  index = words.find_index("is")
  words[index + 1]
end
lines = []
File.open("reviews.txt") do |review_file|
  lines = review_file.readlines
end
relevant_lines = lines.find_all { |line| line.include?("Truncated") }
reviews = relevant_lines.reject { |line| line.include?("--") }
adjectives = reviews.map do |review|
  adjective = find_adjective(review) "'#{adjective.capitalize}'"
end
puts "The critics agree, Truncated is:" puts adjectives
