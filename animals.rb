# Bird class
class Bird
  def talk(name)
    puts "#{name} says Tweet! Tweet!"
  end

  def move(name, destination)
    puts "#{name} is flying to the #{destination}."
  end
end

# Dog class
class Dog
  def talk(name)
    puts "#{name} says Bow Wow!!"
  end

  def move(name, destination)
    puts "#{name} and running to the #{destination}."
  end
end

# Cat class
class Cat
  def talk(name)
    puts "#{name} says Meeeoooow!!"
  end

  def move(name, destination)
    puts "#{name} is running to the #{destination}."
  end
end

bird = Bird.new
bird.move('Tweety', 'tree')

dog = Dog.new
dog.move('Tiny', 'house')

cat = Cat.new
cat.move('Garfield', 'window')
