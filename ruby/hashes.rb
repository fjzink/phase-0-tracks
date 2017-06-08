#Ask the user to input information.
#Store each input as a key/value pair in a hash.
#Print the hash so that the user can verify that the information is correct.
#Allow the user to correct wrong info.
#Print updated hash.

puts "What is the client\'s name?"
name = gets.chomp
puts "Number of children?"
children = gets.chomp
children = children.to_i
client_info[:children] = children
puts "What is the decor theme?"
theme = gets.chomp
client_info[:theme] = theme
puts "What is the client\'s budget?"
budget = gets.chomp
budget = budget.to_i
client_info[:budget] = budget
puts "Is the client cool? (y/n)"
cool = gets.chomp
if cool == y
	cool = true
else
	cool = false
end
client_info[:cool] = cool

p client_info