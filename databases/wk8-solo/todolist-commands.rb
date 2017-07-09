module Mylist
	def self.add_item(db)
		puts "Enter item:"
		item = gets.chomp
		puts "Enter month:"
		month = gets.chomp
		puts "Enter day:"
		day = gets.chomp
		puts "Enter year:"
		year = gets.chomp
		db.execute("INSERT INTO todolist (item, month, day, year) VALUES (?, ?, ?, ?)", [item, month, day, year])
	end

	def self.delete_item(db)
		puts "Enter item:"
		item = gets.chomp
		db.execute("DELETE FROM todolist WHERE item. = ?", [item])
	end

	def self.update_item(db)
		puts "Enter item:"
		item = gets.chomp
		puts "Enter month:"
		month = gets.chomp
		puts "Enter day:"
		day = gets.chomp
		puts "Enter year:"
		year = gets.chomp
		db.execute("UPDATE todolist SET month = ?, day = ?, year = ? WHERE item = ?", [month, day, year, item])
	end

	def self.show_list(db)
		display_list = db.execute("SELECT * FROM todolist")
		display_list.each {|x| p "#{x[1]}: #{x[2]}\/#{x[3]}\/#{x[4]}"}
	end
end