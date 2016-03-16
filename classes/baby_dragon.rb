class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly = 10  # He's full.
    @stuffInIntestine = 0  # He doesn't need to go.

    puts @name + ' is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + 'gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @alseep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  def hungry?
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      @stuffInBelly -= 1
      @stuffInIntestine += 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving! In desperation, he ate YOU!'
      exit
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops! ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomack grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

def prompt msg
  puts "=> #{msg}"
end

prompt 'Would you like a new pet dragon? (y or n)'
new_dragon = gets.chomp.downcase
while new_dragon.start_with?('y')
  prompt 'What\'s your dragon\'s name?'
  dragon_name = gets.chomp
  dragon = Dragon.new dragon_name

  loop do
    prompt "#{dragon_name} might like a little fresh air. To walk your dragon, type walk."
    choice = gets.chomp.downcase
    if choice == 'walk'
      dragon.walk
      prompt 'That was a nice walk. What now?'
    else
      prompt 'I didn\'t catch that. Here\'s what you can do with your dragon:'
      prompt 'feed  ||  walk  ||  rock  ||  toss  ||  put to bed'
    end

    choice = gets.chomp.downcase
    case choice
    when 'feed'
      dragon.feed
    when 'walk'
      dragon.walk
    when 'rock'
      dragon.rock
    when 'toss'
      dragon.toss
    when 'put to bed'
      dragon.putToBed
    when 'quit'
      break
    else
      prompt 'Not sure what you meant there. Let\'s try a little snack and a nice walkie.'
      dragon.feed
      dragon.walk
    end
  end

  prompt 'Oh, dear. How about a new dragon, then? (y or n)'
  new_dragon = gets.chomp.downcase
end

prompt 'Had enough for one game? See you next time!!'
