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
	attr_reader :word
	attr_accessor :hidden_word, :guess_count, :game_over

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
		@game_over = false
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
