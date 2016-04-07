# Bird class
class Bird
  def talk
    puts 'Tweet! Tweet!'
  end

  def move(destination)
    puts "Flying to the #{destination}."
  end
end

# Dog class
class Dog
  def talk
    puts 'Bow Wow!!'
  end

  def move(destination)
    puts "Running to the #{destination}."
  end
end

# Cat class
class Cat
  def talk
    puts 'Meeeoooow!!'
  end

  def move(destination)
    puts "Running to the #{destination}."
  end
end

bird = Bird.new
bird.move('tree')

dog = Dog.new
dog.move('house')

cat = Cat.new
cat.move('window')
