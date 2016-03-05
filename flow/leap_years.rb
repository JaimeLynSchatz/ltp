puts "Ok, when should I start?"
start_year = gets.chomp.to_i
puts "Right. #{start_year}. Now, when should I stop?"
end_year = gets.chomp.to_i

leap_years = 0

for year in (start_year..end_year)
  if year % 100 == 0
    if year % 400 == 0
      leap_years += 1
    end
  elsif year % 4 == 0
    puts year
    leap_years += 1
  end
end

puts "There are #{leap_years} from #{start_year} to #{end_year}."