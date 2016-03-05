puts "Hello!"
gets.chomp
puts "What's your name?"
name = gets.chomp
puts "Hello, #{name}! How are you today?"

while true
  puts gets
end

# How do I get this to work??
# I need something that reads the ctrl-c and interprets it as
# as a character before the bash can.

puts "Well, that was rude, #{name}!"
