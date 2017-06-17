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
end