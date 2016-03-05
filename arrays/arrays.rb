[]
[5]
['Hello', 'Goodbye']

flavor = 'vanilla'
[89.9, flavor, [true, false]]

names = ['Ada', 'Belle', 'Chris']

puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3] # will it throw an out of range error

languages = ['English', 'German', 'Ruby']

languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end

puts 'And let\'s hear it for C++!'
puts '...'

3.times do
  puts 'Hip-Hip-Hooray!'
end

foods = ['artichoke', 'brioche', 'caramel']

puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join('  :)  ') + '  8) '

200.times do
  puts []
end

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whisky on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length
