LIFE_EXPECTANCY = 70.0
DAYS_IN_YEAR = 365.25
HOURS_IN_DAY = 24.0
YEARS_IN_DECADE = 10.0
MINUTES_IN_HOUR = 60.0
SECONDS_IN_MINUTE = 60.0

def hours_in_year
  DAYS_IN_YEAR * HOURS_IN_DAY
end

def minutes_in_decade
  MINUTES_IN_HOUR * hours_in_year * YEARS_IN_DECADE
end

def seconds_in_year
  SECONDS_IN_MINUTE * MINUTES_IN_HOUR * hours_in_year
end

puts "There are #{hours_in_year} hours in a year."
puts "There are #{minutes_in_decade} minutes in a decade."
puts "How old are you?"
years_old = gets.chomp.to_f
puts "You are #{seconds_in_year * years_old} seconds old."

puts "How many chocolates would you like to eat in an hour?"
chocolate_in_hour = gets.chomp.to_f
puts "You may eat #{chocolate_in_hour * LIFE_EXPECTANCY * hours_in_year} chocolates in your life."

puts "If you are 1_246_000_000 seconds old, you are #{1_246_000_000 / seconds_in_year} years old."
