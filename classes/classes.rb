a = Array.new + [12345]
b = String.new + 'hello'
c = Time.new

puts 'a = '+a.to_s
puts 'b = '+b.to_s
puts 'c = '+c.to_s

time = Time.new
time2 = time + 60

puts time
puts time2

puts Time.mktime(2000, 1, 1)
puts Time.mktime(1976, 8, 3, 10, 11)

puts Time.mktime(1977, 1, 27, 10, 28, 15)
birth_time = Time.mktime(1977, 1, 27, 18, 28, 15)
puts "I was born #{Time.new - birth_time} seconds ago"
puts "I turned 1 billion seconds on #{birth_time + 1_000_000_000}"

puts "Hey, you. In what year were you born?"
year = gets.chomp.to_i
puts "Thanks. How about your month?"
month = gets.chomp.to_i
puts "Alright, now how about your day?"
day = gets.chomp.to_i

birthday = Time.mktime(year, month, day)
puts birthday
puts "You're #{Time.now.year - birthday.year} years old"
puts "spank"*(Time.now.year - birthday.year)

colorArray = []
colorHash = {}

colorArray[0] = 'red'
colorArray[1] = 'green'
colorArray[2] = 'blue'
colorHash['strings'] = 'red'
colorHash['numbers'] = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |color|
  puts color
end
colorHash.each do |codeType, color|
  puts codeType + ': ' + color
end

weirdHash = Hash.new

weirdHash[12] = 'monkeys'
weirdHash[[]] = 'emptiness'
weirdHash[Time.new] = 'no time like the present'

puts weirdHash

class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'fifty-eight'
    end

    english
  end
end

puts 5.to_eng
puts 58.to_eng

class Die

  def initialize
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def roll(num)
    if num >= 1 || num <= 6
      @numberString = num
    else
      puts "Fool me twice, shame on me."
      roll
    end
  end

  def showing
    @numberShowing
  end

end

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
