# Animal class
class Animal
  attr_reader :name, :age, :type

  def name(value)
    if value == ''
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age(value)
    if value < 0
      raise "An age of #{value} isn't valid!!"
    end
    @age = value
  end

  def type(value)
    if !value
      raise "Type cannot be blank!!"
    end
    @type = value
  end

  def report_age
    if !@age
      raise "I Don't know how old #{@name} is."
    end
    puts "#{@name} is #{@age} years old."
  end

  def report_type
    if !@type
      raise "I Don't know what #{@name} is."
    eslif !@name
      raise "I need a name!!!"
    end
    puts "#{@name} is #{@type}."
  end

  def what_what
     "Hello, my name is what what."
  end
end

# Bird class
class Bird < Animal
  def talk
    puts "#{@name} says Tweet! Tweet!"
  end

  def move(destination)
    puts "#{@name} is flying to the #{destination}."
  end
end

# Dog class
class Dog < Animal
  def talk
    puts "#{@name} says Bow Wow!!"
    what = what_what
    puts "I called what_what and this is what I got: #{what}"
  end

  def move(destination)
    puts "#{@name} is running to the #{destination}."
  end

end

# Cat class
class Cat < Animal
  def talk
    puts "#{@name} says Meeeoooow!!"
  end

  def move(destination)
    what_what
    puts "#{@name} is running to the #{destination}."
  end
end

bird = Bird.new
bird.name('Tweety')
bird.move('tree')
bird.type('Bird')

dog = Dog.new
dog.name('Tiny')
dog.age(3)
dog.move('house')
dog.report_age
dog.type('Dog')

cat = Cat.new
cat.name('Bandit')
cat.move('window')
cat.age(2)
cat.report_age
cat.type('Cat')

dog2 = Dog.new
dog2.name('Oso')
dog2.talk
dog2.age(10)
dog2.report_age
dog2.move('Tree')
dog2.type('Dog')
dog2.report_type
