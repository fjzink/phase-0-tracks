module Shout
	def yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def yelling_happily(words)
  		words + "!!!" + " :)"
  	end
end

#p Shout.yell_angrily("Arrrrgggghhhhhh")
#p Shout.yelling_happily("Hello")

class Human
	include Shout
end

class Doggo
	include Shout
end

robert = Human.new
fluffy = Doggo.new

p robert.yelling_happily("Good boy, Fluffy")
p fluffy.yelling_happily("Thanks for doin me a praise hooman")