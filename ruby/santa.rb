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

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(name)
		ind = @reindeer_ranking.index(name)
		@reindeer_ranking[ind], @reindeer_ranking[-1] = @reindeer_ranking[-1], @reindeer_ranking[ind]
	end

	#setter
	def gender=(new_gender)
		@gender = new_gender
	end

	#getter
	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

	def reindeer_ranking
		@reindeer_ranking
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

jolly_santa.celebrate_birthday
p jolly_santa.age
jolly_santa.get_mad_at("Vixen")
p jolly_santa.reindeer_ranking
jolly_santa.gender=("N/A")
jolly_santa.about
p jolly_santa.ethnicity