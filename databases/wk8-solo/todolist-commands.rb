module Mylist
	def self.add_item(db, item, month, day, year)
		db.execute("INSERT INTO todolist (item, month, day, year) VALUES (?, ?, ?, ?)", [item, month, day, year])
	end

	def self.delete_item(db, item)
		db.execute("DELETE FROM todolist WHERE name = ?", [item])
	end

	def self.update_item(db, item, month, day, year)
		db.execute("UPDATE todolist SET item = ?, month = ?, day = ?, year = ?", [item, month, day, year])
	end

	def self.show_list(db)
		db.execute("SELECT * FROM todolist")
	end
end