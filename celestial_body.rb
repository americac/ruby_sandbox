class CelestialBody
  attr_accessor :type, :name
end

altair = CelestialBody.new
altair.name = 'Altair'
altair.type = 'star'
polaris = CelestialBody.new
polaris.name = 'Polaris'
polaris.type = 'star'
vega = CelestialBody.new
vega.name = 'Vega'
vega.type = 'star'

puts vega.name, polaris.name, altair.name

bodies = Hash.new do |hash, key|
  body = CelestialBody.new
  body.type = "planet"
  hash[key] = body
end

bodies['Mars'].name = 'Mars'
p bodies

bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
p bodies
