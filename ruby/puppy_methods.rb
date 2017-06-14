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
end

puppy = Puppy.new
puppy.fetch("bone")
puppy.speak(5)
puppy.roll_over
puppy.dog_years(2)
puppy.play_dead