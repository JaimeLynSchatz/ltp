class Die

  def initialize
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def roll_a(num)
    if num.to_i >= 1 && num.to_i <= 6
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
die.roll
puts die.showing

puts "Cheater die coming up:"
cheater = Die.new
puts die.roll_a(5)
puts die.roll_a(1)
puts die.roll_a(4)
puts die.roll_a(6)
puts die.roll_a(0)
puts die.roll_a(10)
puts die.roll_a("d")
puts die.roll_a(7)
