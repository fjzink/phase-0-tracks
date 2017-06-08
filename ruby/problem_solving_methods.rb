def search_array(arr, num)
	i = 0
	while i < arr.length
		if arr[i] == num 
			return i
		else
			i += 1
		end
	end
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)
p search_array(arr, 24)

def fib(number)
	first_num = [0]
	if number == 1
		return first_num
	elsif number == 2
		return first_num.push(1)
	elsif number <= 0
		return "This is not a valid input. Please enter a number >= 1."
	else
		two_num = first_num.push(1)
		for i in 1..(number-2)
			two_num.push(two_num[-2]+two_num[-1])
		end
		two_num
	end
end

p fib(100)[99] == 218922995834555169026
p fib(5)
p fib(10)

#Define an index to loop through the array, comparing two adjacent elements at a time. If the first number is larger than the second, then swap the two numbers.
#Define a new sorted array, and compare to the original array to see if there are any differences.
#If the two arrays are the same, then the original array has been sorted.

def sort_arr(arr)
	test = false
	until test == true
		test = true
		i = 0
		while i < (arr.length-1)
			if arr[i] > arr[i+1]
				arr[i], arr[i+1] = arr[i+1], arr[i]
				test = false
			end
			i += 1
		end
	end
	arr
end

p sort_arr([1, 5, 4, 2, 9, 11, 15, 99, 60, 1])