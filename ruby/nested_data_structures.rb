
formula_1 = {
	current_drivers: ["Sebastian Vettel", "Lewis Hamilton", "Fernando Alonso", "Kimi Raikkonen", "Sergio Perez"],	
	current_teams: ["Mercedes", "Ferrari", "Renault", "Red Bull", "Haas", "Force India"],
	drivers_champions: {y2012: "Vettel", y2013: "Vettel", y2014: "Hamilton", y2015: "Hamilton", y2016: "Rosberg"},
	constructors_champions: {y2012: "Red Bull", y2013: "Red Bull", y2014: "Mercedes", y2015: "Mercedes", y2016: "Mercedes"}
}

puts "#{formula_1[:current_drivers][3]} is a current Formula 1 driver."
puts "#{formula_1[:current_teams][0]} is a current Formula 1 team."
puts "#{formula_1[:drivers_champions][:y2016]} was the drivers\' champion in 2016."
puts "#{formula_1[:constructors_champions][:y2012]} was the constructors\' champion in 2012."