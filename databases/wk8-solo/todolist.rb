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
		Mylist.add_item(to_do_list)
	elsif input = "delete"
		Mylist.delete_item(to_do_list)
	elsif input = "update"
		Mylist.update_item(to_do_list)
	elsif input = "show"
		Mylist.show_list(to_do_list)
	else
		puts "Invalid input."
	end

	#End loop if user types "done"
	if input == "done"
		done = true
	end
end