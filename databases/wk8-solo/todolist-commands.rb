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
		db.execute("DELETE FROM todolist WHERE name = ?", [item])
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
		db.execute("UPDATE todolist SET item = ?, month = ?, day = ?, year = ?", [item, month, day, year])
	end

	def self.show_list(db)
		db.execute("SELECT * FROM todolist")
	end
end