puts "How many employees will be processed?"
employees = gets.chomp
employees = employees.to_i
count = 1
while count <= employees
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp
	age = age.to_f
	puts "What year were you born?"
	born = gets.chomp
	born = born.to_f
	calc_age = 2017.0-born
	puts "Our company cafeteria serves garlic bread. Should we order you some?(y/n)"
	garlic = gets.chomp
	puts "Would you like to enroll in the company\'s health insurance?(y/n)"
	insurance = gets.chomp
	age_right = age == calc_age
	like_garlic = garlic == "y"
	want_insurance = insurance == "y"
	if name == "Drake Cula" || name == "Tu Fang"
		p "Definitely a vampire."
	elsif !age_right && !like_garlic && !want_insurance
		p "Almost certainly a vampire."
	elsif !age_right && (!like_garlic || !want_insurance)
		p "Probably a vampire."
	elsif age_right && (like_garlic || want_insurance)
		p "Probably not a vampire."
	else 
		p "Results inconclusive."
	end
	count += 1
end
finish = ""
answer = ""
until finish == "done"
	puts "Name your allergies one at a time. Type \"done\" when you are finished."
	answer = gets.chomp
	if answer == "sunshine"
		p "Probably a vampire."
	end
	finish = answer
end
p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."