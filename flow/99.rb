for bottles in (1..100).reverse_each
  puts "#{bottles} bottles of beer on the wall,"
  puts "#{bottles} bottles of beer!"
  puts "If one take one down and pass it around..."
  puts "#{bottles - 1} bottles of beer on the wall!"
  puts
end

puts "Hey, somebody better go on a beer run!"
