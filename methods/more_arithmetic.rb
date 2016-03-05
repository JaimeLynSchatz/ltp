puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

puts ''
puts((5-2).abs)
puts((2-5).abs)

puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(9999999999999999999))

10.times { puts('The weatherman said there is a '+rand(101).to_s+'% chance of rain,') }

puts('but you can never trust a weatherman.')

srand 1776 # seeding the rand generator
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)
