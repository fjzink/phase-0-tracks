=begin
*Split the full name into an array of the first and last name.
*Swap their positions in the array.
*Check if each letter in each name is a vowel. If it is a vowel, change it to the next vowel.
*Check if each letter in each name is a consonant. If it is a consonant, change it to the next consonant.
*Join the changed names in the array back into a string of the full changed name.
=end

def letter_changer(letter)
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	if vowels.include?(letter)
		if letter == "u"
			return vowels[0]
		else
			ind = vowels.index(letter)
			return vowels[ind+1]
		end
	else
		if letter == "z"
			return consonants[0]
		else
			ind = consonants.index(letter)
			return consonants[ind+1]
		end
	end
end

def alias_manager(name)
	lower_name = name.downcase
	first_last = lower_name.split(' ')
	last_first = first_last.rotate
	for i in 0...last_first.length
		for j in 0...last_first[i].length
			last_first[i][j] = letter_changer(last_first[i][j])
		end
	end
	last_first[0] = last_first[0].capitalize
	last_first[1] = last_first[1].capitalize
	return "#{last_first[0]} #{last_first[1]}"
end

names = {}
input = ""
until input == "quit"
	puts "Enter a name to convert it to an alias. Enter \'quit\' to exit."
	input = gets.chomp
	if input != "quit"
		new_alias = alias_manager(input)
		names[input] = new_alias
	end
end

names.each {|old, new| p "#{new} is actually #{old}"}