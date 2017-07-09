require 'sqlite3'
require_relative 'todolist-commands'

#Create the to do list
to_do_list = Database.new("todolist.db")

#Store the item and the date that it needs to be complete by
make_table = <<-SQL
	CREATE TABLE IF NOT EXISTS todolist (
	id INTEGER PRIMARY KEY,
	item VARCHAR(255),
	month INT,
	day INT,
	year INT
	)
SQL

to_do_list.execute(make_table)

#User interface

puts "Welcome to your to do list!"
puts "Type \'done\' to exit the program."

done = false
while !done
	puts "Enter command:"
	input = gets.chomp

	#Execute a command
	if input == "add"

	elsif input = "delete"

	elsif input = "update"

	elsif input = "show"

	else
		puts "Invalid input."
	end

	#End loop if user types "done"
	if input == "done"
		done = true
	end
end