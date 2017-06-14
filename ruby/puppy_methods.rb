class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
	int.times do 
		puts "Woof!"
	end
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(int)
  	int * 7
  end

  def play_dead
  	puts "*plays dead*"
  end

  def initialize
  	puts "Initializing new puppy instance ..."
  end
end

=begin
puppy = Puppy.new
puppy.fetch("bone")
puppy.speak(5)
puppy.roll_over
puppy.dog_years(2)
puppy.play_dead
=end

class Movies
	def initialize
		puts "Initializing movie player."
	end

	def play(title)
		puts "Play #{title}."
	end

	def review
		puts "Do you like the movie?(y/n)"
		input = gets.chomp
		if input == "y"
			puts "Great."
		elsif input == "n"
			puts "Alright."
		else
			puts "What?"
		end
	end
end

movie_list = []
for i in 0...50
	movie_list.push(Movies.new)
end

p movie_list
#movie_list.each {|x| x.play("Indiana Jones")}
#movie_list.each {|x| x.review()}