#release 0
def block_n_method
	puts "We are in the method!"
	yield
	puts "We are back in the method!"
end

block_n_method { puts "We are in the block." }

#release 1
arr = [1,1,2,3,5,8,13,21,34,55];
hsh = {"Honda" => "Japan", "Fiat" => "Italy", "Volkswagon" => "Germany", "Volvo" => "Sweden", "Rolls Royce" => "UK"};

arr.each do |num|
	num2 = num * 2
	puts "#{num} doubled is #{num2}."
end

arr.map! do |num|
	num * 2
end

p arr

hsh.each do |make, country|
	puts "#{make} is made in #{country}"
end

#release 2
fib = [1,1,2,3,5,8,13,21,34,55];
#question 1
fib_odd = fib.reject { |num| num % 2 == 0 }
p fib_odd

non_axis = hsh.reject { |make, country| country == "Japan" || country == "Germany" || country == "Italy" }
p non_axis

#question 2
fib_even = fib.select { |num| num % 2 == 0 }
p fib_even

axis_cars = hsh.select { |make, country| country == "Japan" || country == "Germany" || country == "Italy" }
p axis_cars

#question 3 (we realize keep_if modifies the original array/hash, but after 30 minutes of searching we couldn't find a better alternative)
small_fib = fib.keep_if { |num| num < 10 }
p small_fib

british_cars = hsh.keep_if { |make, country| country == "UK" }
p british_cars

fib = [1,1,2,3,5,8,13,21,34,55];
hsh = {"Honda" => "Japan", "Fiat" => "Italy", "Volkswagon" => "Germany", "Volvo" => "Sweden", "Rolls Royce" => "UK"};

#question 4
single_dig_fib = fib.drop_while { |num| num < 10 }
p single_dig_fib

#note: drop_while returns an array of 2-element arrays
cars_w_shortname = hsh.drop_while { |make, country| make.length > 5 }
p cars_w_shortname