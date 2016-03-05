puts 'HI, DEARIE, HOW ARE YOU?'

response = ''
while response != 'q'
  response = gets.chomp
  if response != response.upcase
    puts "WHAT? SPEAK UP!"
  else
    puts "NO, NOT SINCE 19#{rand(100)}!"
  end
end
