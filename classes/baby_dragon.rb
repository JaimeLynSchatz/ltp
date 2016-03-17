# Dragon class will create a baby dragon instance with name
# set to initialization parameter
class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # He's full.
    @stuff_in_intestine = 0 # He doesn't need to go.

    puts @name + ' is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      passage_of_time
      break unless @asleep
      puts @name + ' snores, filling the room with smoke.'
    end
    @asleep = false
    puts @name + ' wakes up slowly.'
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end

  def rock
    puts 'You rock ' + @name + 'gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    @asleep = false
    puts '...but wakes when you stop.'
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving! In desperation, he ate YOU!'
      exit
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
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

def prompt(msg)
  puts "=> #{msg}"
end

def pet_care(choice)
  case choice
    when 'feed'
      feed
    when 'walk'
      walk
    when 'rock'
      rock
    when 'toss'
      toss
    when 'put to bed'
      put_to_bed
    when 'quit'
      quit_game
    else
      prompt 'Not sure what you meant there.'
      prompt 'Let\'s try a little snack and a nice walkie.'
      feed
      walk
  end
end

def quit_game
  prompt 'Oh, dear. How about a new dragon, then? (y or n)'
  new_dragon = gets.chomp.downcase
  prompt 'Had enough for one game? See you next time!!'
end

prompt 'Would you like a new pet dragon? (y or n)'
new_dragon = gets.chomp.downcase
while new_dragon.start_with?('y')
  prompt 'What\'s your dragon\'s name?'
  dragon_name = gets.chomp
  dragon = Dragon.new dragon_name

  loop do
    prompt "#{dragon_name} might like a little fresh air."
    prompt 'To walk your dragon, type walk.'
    choice = gets.chomp.downcase
    if choice == 'walk'
      dragon.walk
      prompt 'That was a nice walk. What now?'
    else
      prompt 'I didn\'t catch that. Here\'s what you can do with your dragon:'
      prompt 'feed  ||  walk  ||  rock  ||  toss  ||  put to bed'
    end

    choice = gets.chomp.downcase
    puts choice
    dragon.send(choice)

    # dragon.send(pet_care(choice))
  end  
end


