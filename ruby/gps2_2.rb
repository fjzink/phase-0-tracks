# Method to create a list
	
# input: string of items separated by spaces (example: "carrots apples cereal pizza")

# steps: 
  # list_method
  # [fill in any steps here]
  # input type is a string
  # create an array of individual grocery items
  # initialize empty hash
  # set default quantity
  # Iterate through the array store as keys into empty hash
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]


 grocery_hash = {}

# Method to add an item to a list	
# input: list, item name, and optional quantity
# pass list_method as a argument.
# steps:
	   # store item name and quantity as hash parameters
# output:
       # updated hash with the added item

def add_item(grocery_list,item_name,quantity)
	   
	   grocery_list[item_name] = quantity
	   

end


add_item(grocery_hash,"lemonade",2)
add_item(grocery_hash,"Tomatoes",3)
add_item(grocery_hash,"Onions",1)
add_item(grocery_hash,"Ice Cream",4)


# Method to remove an item from the list
# input:
		#item we would like to remove as a string
		#pass list_method as an argument
# steps:		
		#remove item from hash

# output:
		#updated hash without the item

def remove_item(grocery_list,item_name)
	   
	   grocery_list.delete(item_name)

end

#remove_item(create_list,"apple")





# Method to update the quantity of an item
# input:
	#list_method 
	#item
	#quantity
# steps:
	# access value and key
	# set value to new quantity   

# output:
	#the hash with updated quantity


def update_quantity(grocery_list,item_name,quantity)
	   
	   grocery_list[item_name] = quantity

end

# Method to print a list and make it look pretty
# input:
	#list_method
# steps:
	# p iterate through list_method updated grocery list #{key: value:}

# output:
# string with hash keys and values side by side 

def pretty_method(grocery_list)
	p "grocery list"

	grocery_list.each {|items, quantity| p "#{items}, qty:#{quantity}"} 

end


pretty_method(grocery_hash)