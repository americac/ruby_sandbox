class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize (name, age, occupation, hobby=nil, birthplace)
    self.name = name
    self.age = age
    self.occupation = occupation
    self.birthplace = birthplace
  end
end

def print_summary(candidate)
  puts "Candidate: #{candidate.name}"
  puts "Age: #{candidate.age}"
  puts "Occupation: #{candidate.occupation}"
  puts "Hobby: #{candidate.hobby}"
  puts "Birthplace: #{candidate.birthplace}"
end

barnes = Candidate.new("Carl Barnes", 49, "Attorney", , "Miami")
print_summary(barnes)
amy = Candidate.new("Amy Nguyen", 37, "Lacrosse", "Engineer", "Seattle")
print_summary(amy)

raise "The end"
lines = []
File.open('votes.txt') do |file|
  lines = file.readlines
end

p lines

votes = {}
lines.each do |candidate|
  candidate = candidate.chomp
  if votes[candidate]
    votes[candidate] += 1
  else
    votes[candidate] = 1
  end
end

p votes

##Create votes as a Hash object and set a default value
votes = Hash.new(0)
lines.each do |candidate|
  candidate = candidate.chomp.upcase!
  votes[candidate] += 1
end

votes.each do |name,count|
  puts "#{name}: #{count}"
end
