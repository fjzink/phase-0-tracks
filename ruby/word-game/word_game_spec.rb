require_relative 'word_game'

describe WordGame do
	let(:game_state) { WordGame.new("test")}

	it "shows the word" do
		expect(game_state.word).to eq "test"
	end

	it "shows the hidden version of the word" do
		expect(game_state.hidden_word).to eq "_ _ _ _"
	end

	it "shows the total number of guesses available" do
		expect(game_state.total_guesses).to eq 8
	end

	it "shows the current guess count" do
		game_state.guess_count = 5
		expect(game_state.guess_count).to eq 5
	end

	it "shows if the game is over" do
		expect(game_state.game_over).to eq false
	end

	it "shows the correct guess that the user had made so far" do
		game_state.correct_guesses.push("e")
		expect(game_state.correct_guesses).to eq ["e"]
	end

	it "updates the hidden version of the word with correct guesses" do
		game_state.update_hidden("t")
		expect(game_state.hidden_word).to eq "t _ _ t"
	end

	it "checks to see if the user has guessed the word and won the game" do
		game_state.guess_count = 8
		expect(game_state.check_win).to eq "lose"
	end
end