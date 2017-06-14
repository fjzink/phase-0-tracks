class Santa
	attr_reader :ethnicity, :reindeer_ranking
	attr_accessor :gender, :age

	def initialize(gender, ethnicity, age)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
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
end
=begin
jolly_santa = Santa.new("Dude", "Santa")
jolly_santa.speak
jolly_santa.eat_milk_and_cookies("Snickerdoodle")

santas = []
=end
genders = ["male", "female", "bigender", "N/A"]
ethnicities = ["Brazilian", "Indian", "Russian", "Congolese"]
=begin
for i in 0...genders.length
	santas << Santa.new(genders[i], ethnicities[i])
end

santas.each {|x| x.about}

jolly_santa.celebrate_birthday
p jolly_santa.age
jolly_santa.get_mad_at("Vixen")
p jolly_santa.reindeer_ranking
jolly_santa.gender = "N/A"
jolly_santa.about
p jolly_santa.ethnicity
=end

def santa_creator(num)
	santa_list = []
	ages = (0..140).to_a
	genders = ["male", "female", "bigender", "N/A"]
	ethnicities = ["Brazilian", "Indian", "Russian", "Congolese"]
	for i in 0...num
		new_age = ages.sample
		new_ethnicity = ethnicities.sample
		new_gender = genders.sample
		santa_list.push(Santa.new(new_gender, new_ethnicity, new_age))
	end
	santa_list
end

santa_list = santa_creator(25)
santa_list.each {|x| puts "This Santa is #{x.gender}, #{x.ethnicity}, and #{x.age} years old"}