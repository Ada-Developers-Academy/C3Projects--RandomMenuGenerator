# Random Menu Generator
# This program takes user input and outputs a chosen number of unique random menu items

# Introduce the generator and ask for input
puts "Welcome to the Random Menu Generator.\n\n"
puts "You get to pick a descriptor, a cooking style, and a type of food to combine into a random menu item."
puts "The generator will make a list of unique menu items, so make sure to enter enough words in each category.\n\n"
puts "Let's start with adjectives. Please enter a list of adjectives, separated by spaces:"

# Gets input from the user and splits it on white space, then stores that in an array.
adjectives = gets.chomp.split

# Prompts user to give as many words in the second category as in the first
puts "\nOkay, now give me some cooking styles.\nYou gave me #{adjectives.length} adjectives, so I recommend that many words here too."
cooking_styles = gets.chomp.split

# Prompts user to give as many words in the third category as in the smaller of the previous two
puts "\nOkay, now give me some foods.\nYour smallest set of words so far is #{[adjectives.length, cooking_styles.length].sort[0]}, so I recommend that many words here too."
foods = gets.chomp.split

# Find length of shortest array
length_of_shortest = [adjectives.length, cooking_styles.length, foods.length].sort[0]

# Get user input to determine number of menu items displayed
# Recommend highest limit according to shortest array
puts "\nHow many menu items would you like to see? (up to #{length_of_shortest})"
number_of_items = gets.chomp
puts "\n"

# Validate input to make sure it's a number
if !(number_of_items.to_i.to_s == number_of_items)
	puts "That is not a valid number. Please enter a number:"
	number_of_items = gets.chomp
# Check to make sure the input is not over the size of the smallest array
elsif number_of_items.to_i > length_of_shortest
	puts "That number is too long.\nI will show the maximum number of menu items instead (#{length_of_shortest})."
	number_of_items = length_of_shortest
end

# Run a loop the number of times chosen by the user
for index in 1..number_of_items.to_i
	# Initialize the menu_item with the line number
	menu_item = "#{index}."
	# Go through the three arrays and add a random element to the menu_item
	for column in [adjectives, cooking_styles, foods]
		# Assign a random element to word_used
		word_used = column.sample
		# Append word_used to the menu_item
		menu_item << " #{word_used}"
		# Delete word_used from the array
		column.delete(word_used)
	end
	# Print the menu item
	puts menu_item
end
