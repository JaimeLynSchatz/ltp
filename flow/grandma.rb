puts 'HI, DEARIE, HOW ARE YOU?'

response = gets.chomp
while response != 'BYE BYE BYE'
  if response != response.upcase
    puts "WHAT? SPEAK UP!"
  elsif response == 'BYE' || response == 'BYE BYE'
    puts "SORRY, DEAR, YOU'LL HAVE TO SPEAK UP!"
  else
    puts "NO, NOT SINCE 19#{rand(10..100)}!"
  end
  response = gets.chomp
end

puts "OK, HONEY, BYE!"
