=begin
*Create a WordGame class.
*Store attributes for the word to be guessed, the hidden version of the word to be displayed, the number of moves played, and whether the game is over or not.
*Allow user to input word, and set turn limit based on word length.
*If the number of turns meets the turn limit, the game is over and the player loses.
*Store the players guesses, and if the guess is a repeat do not advance the turn count.
*If the player guesses the word before the turn limit, the game is over and the player wins.
*Update and display hidden version of the word on each turn.
=end

class WordGame
	attr_reader :word, :hidden_word, :total_guesses
	attr_accessor :guess_count, :game_over, :correct_guesses

	def initialize(word)
		@word = word
		hidden_word = ""
		for i in 0...word.length
			if i < (word.length-1)
				hidden_word = hidden_word +"_ "
			else
				hidden_word = hidden_word + "_"
			end
		end
		@hidden_word = hidden_word
		@guess_count = 0
		@total_guesses = 2 * word.length
		@game_over = false
		@correct_guesses = []
	end

	def update_hidden(instance, guess)
		indices = []
		for i in 0...instance.word.length
			if guess == instance.word[i]
				indices.push(i)
			end
		end
		for i in 0...indices.length
			@hidden_word[2*indices[i]] = guess
		end
	end
end
=begin
puts "Welcome to the Word Guessing Game! Input the word you want your opponent to guess:"
input = gets.chomp
input = input.downcase
game_state = WordGame.new(input)

puts "You can guess one letter per turn."
puts "You have #{game_state.total_guesses} tries to guess the word."
puts "If you run out of guesses, you lose. Good Luck!"

while !game_state.game_over
	puts "Make a guess:"
	guess = gets.chomp
	guess = guess.downcase
	if guess.length == 1
		if word.include?(guess)
			update_hidden(game_state, guess)
		end
	else
		puts "Invalid guess. Input just one letter."
	end
end
=end