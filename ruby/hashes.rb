#Release 0

=begin
array = [1, 2, 3, "a", "b", "c"]
p array[3]
p array[50]
p array.length
p array.push("d")
p array.drop(2)
=end

#Release 1

=begin
form = {
	name: "Bob",
	address: "5 Awesome Street",
	email: "bob@totallyradical.net",
	phone: 1234567899,
	blue: "cerulean",
	walpaper: "paisley",
	ombre: "fierce"
}

p form

form[:name] = "Bobby"
form[:email] = "bobby@totallyradical.net"
form[:hired] = true

p form

shade_blue = :blue
p form[shade_blue]

p form[:name] + form[:address]
p form
=end

#Release 2

#Ask the user to input information.
#Store each input as a key/value pair in a hash.
#Print the hash so that the user can verify that the information is correct.
#Allow the user to correct wrong info.
#Print updated hash.

client_info = {}
puts "What is the client\'s name?"
name = gets.chomp
client_info[:name] = name
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
if cool == "y"
	cool = true
else
	cool = false
end
client_info[:cool] = cool

p client_info

input = ""
until input == "done"
	puts "Is the information correct? If there is an error, type the key name to update it. Type \"done\" to exit."
	input = gets.chomp
	input_sym = input.to_sym
	if client_info.include?(input_sym)
		puts "Input the correction:"
		correction = gets.chomp
		if input_sym == :children || input_sym == :budget
			correction = correction.to_i
		elsif input_sym == :cool
			if correction == "y"
				correction = true
			else
				correction = false
			end
		end
		client_info[input_sym] = correction
	elsif !client_info.include?(input_sym) && input != "done"
		puts "The key does not exist."
	end
	p client_info
end