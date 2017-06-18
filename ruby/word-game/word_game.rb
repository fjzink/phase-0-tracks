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
	attr_reader :word, :total_guesses
	attr_accessor :guess_count, :game_over, :correct_guesses, :hidden_word

	def initialize(word)
		@word = word.downcase
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

	def update_hidden(guess)
		indices = []
		for i in 0...@word.length
			if guess == @word[i]
				indices.push(i)
			end
		end
		for i in 0...indices.length
			@hidden_word[2*indices[i]] = guess
		end
	end

	def check_win
		word_check = @word.split(//)
		word_check = word_check.uniq
		word_check = word_check.sort
		hidden_check = @hidden_word.split(' ')
		hidden_check = hidden_check.uniq
		hidden_check = hidden_check.sort
		if word_check == hidden_check
			@game_over = true
			puts "You correctly guessed the word. Congratulations, you win!"
			#return "win" #Uncomment this line to run rspec
		elsif @guess_count == @total_guesses
			@game_over = true
			puts "You ran out of guesses. You lose."
			#return "lose" #Uncomment this line to run rspec
		else
			puts @hidden_word
		end
	end
end

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
		if game_state.word.include?(guess) && !game_state.correct_guesses.include?(guess)
			puts "Your guess was correct."
			game_state.update_hidden(guess)
			game_state.correct_guesses.push(guess)
			game_state.guess_count += 1
		elsif game_state.correct_guesses.include?(guess)
			puts "You already correctly guessed this letter."
		else
			puts "Incorrect guess."
			game_state.guess_count += 1
		end
	else
		puts "Invalid guess. Input just one letter."
	end
	game_state.check_win
end