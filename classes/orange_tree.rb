class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @oranges = 0

    puts "You planted a tree!"
  end

  def height
    @height
  end

  def age
    @age
  end

  def oneYearPasses
    @oranges = 0
    @age += 1
    if @age >= 500
      dies
    end
    @height += 3
  end

  def countTheOranges
    if @age > 3
      @oranges = @age * 4
    end
  end

  def pickAnOrange
    if @oranges > 0
      @oranges -= 1
    else
      puts "No oranges right now :(."
    end
  end

  private

  def dies
    puts "This tree has lived a long life, but now it is dead."
  end

end

tree = OrangeTree.new
puts tree.countTheOranges
tree.pickAnOrange
100.times do
  tree.oneYearPasses
  puts tree.height
  puts tree.age
  puts tree.countTheOranges
  tree.pickAnOrange
end