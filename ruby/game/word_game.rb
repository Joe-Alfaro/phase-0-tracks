class Word_game
  attr_reader :phrase, :guesses, :win
attr_accessor :guess_count
  def initialize(phrase)
    @phrase = phrase.split("")
    @guesses = []
    @guess_count = 6
    @win = false
  end

  def guess(letter)
    good = false
    while good == false
      if letter.length > 1
       puts "Please only enter one letter"
        letter = gets.chomp
      else
        @guesses << letter
        good = true
      end
    end

  end

  def print_board
    phrase_to_print = []
    counter = 0
    number_guessed = 0
    alphabet = "abcdefghijklmnopqrstuvwxyz".split("")
    while counter < @phrase.length
      guessed = false
      letter = false
      index = 0
      while index < @guesses.length
          if @phrase[counter] == @guesses[index]
#            phrase_to_print << guesses[index]
            guessed = true
#            number_guessed += 1
            letter = true
            break
          else
            index += 1
          end
      end
      index = 0
      while index < alphabet.length
        if @phrase[counter] == alphabet[index]
          letter = true
          break
        end
        index += 1
      end
      if letter == true && guessed == false
        phrase_to_print << '_'
      else
        phrase_to_print << @phrase[counter]
        number_guessed += 1
      end
      counter += 1
    end
    if number_guessed == @phrase.length
      @win = true
    end
    p phrase_to_print.join(" ")
  end
end

puts "Enter word to be guessed:"
phrase = gets.chomp.downcase
game = Word_game.new(phrase)

while game.guess_count > 0
  game.print_board
#  game.print_hangman
  puts "Guesses left: #{game.guess_count}"
  if game.win
    break
  end
  puts "Enter a letter:"
  letter = gets.chomp.downcase
  game.guess(letter)
  game.guess_count = game.guess_count - 1
  game.phrase.each {|l|
    if l == letter
      game.guess_count +=1
      break
    end
  }
end

if game.win == true
  puts "WINNER"
else game.win ==false
  puts "You lose... maybe next time?  But, probably not."
end

