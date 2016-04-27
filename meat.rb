# Steak Class
class Steak
  attr_accessor :grade
  GRADE_SCORES = { 'Prime' => 3, 'Choice' => 2, 'Select' => 1 }

  def >(other)
    GRADE_SCORES[grade] > GRADE_SCORES[other.grade]
  end

  def <=>(other)
    if GRADE_SCORES[self.grade] <GRADE_SCORES[other.grade]
      return -1
    elsif GRADE_SCORES[self.grade] == GRADE_SCORES[other.grade]
      return 0
    else
      return 1
    end
  end
end

first_steak = Steak.new
first_steak.grade = 'Prime'
second_steak = Steak.new
second_steak.grade = 'Choice'

puts "I'll take #{first_steak.inspect}" if first_steak > second_steak
puts second_steak <=> first_steak
