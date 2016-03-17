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

  def bed
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

def new_dragon
    prompt 'What\'s your dragon\'s name?'
    dragon_name = gets.chomp
    Dragon.new dragon_name
end

def adopt
  prompt 'Ah, you\'d like to adopt a new dragon?'
  new_dragon
end

def quit
  prompt 'Had enough for one game? See you next time!!'
  exit
end

PET_CARE = %w(feed walk rock toss bed quit).freeze

dragon = new_dragon

prompt 'Here\'s what you can do with your dragon:'
prompt 'feed  ||  walk  ||  rock  ||  toss  ||  bed || adopt\n'
prompt "Just so you don't get eaten, if I don't understand,"
prompt "Let's just say you fed #{dragon_name}\n"

choice = ''
while choice != 'quit'
  prompt "What would you like to do with #{dragon_name} now?"
  choice = gets.chomp.downcase
  dragon.send(PET_CARE.include?(choice) ? choice : 'feed')
end
