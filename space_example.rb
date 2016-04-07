class Spaceship
    # launch is a method to set the destination variable
  def launch(destination)
    @destination = destination
  end

    # destination method returns the value of destination variable
  def destination
    @destination
  end
end

class Spaceship2
    # allow read and write of variable instead of having to create a method for each variable
  attr_accessor :destination
    # allow read only access
  attr_reader :name
    # allow write only access
  attr_writer :name

  def cancel_launch
    destination = "" # this creates a new local variable
    self.destination = "Launch to " + self.destination + " has been canceled"
  end
end

ship = Spaceship.new
if ship.destination.nil?
  puts "Destination is nil"
end
ship.launch("Earth")
if ship.destination
  puts "Destination is " + ship.destination
end

ship = Spaceship2.new
if ship.destination.nil?
  puts "Destination is nil"
end
ship.destination = "Mars"
puts "Destination is " + ship.destination
puts ship.cancel_launch
