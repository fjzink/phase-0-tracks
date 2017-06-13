class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def about
		puts "This Santa is #{@gender} and #{@ethnicity}."
	end
end

jolly_santa = Santa.new("Dude", "Santa")
jolly_santa.speak
jolly_santa.eat_milk_and_cookies("Snickerdoodle")

santas = []
genders = ["male", "female", "bigender", "N/A"]
ethnicities = ["Brazilian", "Indian", "Russian", "Congolese"]

for i in 0...genders.length
	santas << Santa.new(genders[i], ethnicities[i])
end

santas.each {|x| x.about}