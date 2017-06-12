=begin
Puppy:
	
	Characteristics:
	Cute
	Fluffy
	Legs: 4
	Eyes: 2

	Behavior:
	Tail wags
	Playful
	Licks things
	Nose boops
=end

=begin
class Puppy
	end

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

p spot.class
p duchess == fido
p fido.instance_of?(Array)
p fido.instance_of?(Puppy)
p spot.play_dead
=end

=begin
str = String.new
p str.length
p str.empty?
p str += "huh."
greeting = String.new("hello")
p greeting.length
p greeting.upcase
=end