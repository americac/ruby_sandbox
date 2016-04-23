class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize (name, age:, occupation:, hobby: nil, birthplace: 'Sleepy Hallow')
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
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

barnes = Candidate.new("Carl Barnes",age: 49,occupation: "Attorney", birthplace: "Miami")
print_summary(barnes)
amy = Candidate.new("Amy Nguyen", :age => 37, :hobby => "Lacrosse", :occupation => "Engineer", :birthplace => "Seattle")
print_summary(amy)
new_candidate = Candidate.new("New Candidate")
print_summary(new_candidate)
bad_candidate = Candidate.new("Bad Candidate", aeg: 0, ocpation: 'Nothing')
print_summary(new_candidate)

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
