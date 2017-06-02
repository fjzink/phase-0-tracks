#Use for loop to reassign each index in the string using .next method
#Run for loop on length of password 
#Use if statement to check if the index is a space or not
#Print reassigned password

def encrypt(password)
	for i in 0...password.length
		if password[i] == " "
		else
			password[i] = password[i].next
		end
	end
	p password
end

encrypt("password password")