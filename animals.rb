# Bird class
class Bird
  def make_up_name
    @name = 'Tweety'
  end

  def talk
    puts "#{@name} says Tweet! Tweet!"
  end

  def move(destination)
    puts "#{@name} is flying to the #{destination}."
  end
end

# Dog class
class Dog
  attr_accessor :name, :age

  def talk
    puts "#{@name} says Bow Wow!!"
  end

  def move(destination)
    puts "#{@name} and running to the #{destination}."
  end

end

# Cat class
class Cat
  def make_up_name
    @name = 'Garfield'
  end

  def talk
    puts "#{@name} says Meeeoooow!!"
  end

  def move(destination)
    puts "#{@name} is running to the #{destination}."
  end

  def make_up_age
    @age = 5
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

bird = Bird.new
bird.make_up_name
bird.move('tree')

dog = Dog.new
dog.name='Tiny'
dog.age=3
dog.move('house')
age = dog.age
name = dog.name
puts "#{name} is #{age} years old"

cat = Cat.new
cat.make_up_name
cat.move('window')
cat.make_up_age
cat.report_age
