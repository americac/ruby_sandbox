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
  def make_up_name
    @name = 'Tiny'
  end

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
end

bird = Bird.new
bird.make_up_name
bird.move('tree')

dog = Dog.new
dog.make_up_name
dog.move('house')

cat = Cat.new
cat.make_up_name
cat.move('window')
