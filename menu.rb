# How many menu items would the user like to see?
puts "Welcome to the crazy random menu generator!"
print "How many menu items would you like to create? "

menu_items = gets.chomp

# Invalid input handling - no input or strings
while menu_items == "" || menu_items.to_i == 0
  puts "Please type a valid number."
  menu_items = gets.chomp.to_i
end

# Create 3 arrays, 1. food adjectives, 2. food preparation 3. foods (aka rare animals)
adj 	         = ["Melty", "Spicy", "Buttered", "Gourmet", "Fresh", "Hot", "Crunchy", "Sweet", "Savory", 
			           "Marinated", "Chocolatey", "Flaming", "Creamy", "Polka-dotted", "Chunky"]
prep           = ["pan-fried", "sauteed", "steamed", "roasted", "baked", "boiled", "broiled", "fried", 
			           "mashed", "breaded", "scorched", "barbecue", "slow-roasted", "braised", "chopped", "raw", 
			           "sous vide", "poached"]
rare_animals 	 = ["panda", "unicorn", "manatee", "wooly mammoth", "bald eagle", "gorilla", "emperor penguin", 
			           "blue whale", "hammerhead shark", "toucan", "chimpanzee", "hummingbird", "sea turtle", "rhino", 
			           "monarch butterfly", "sloth"]

# Print menu items in an ordered list based on requested number of items by user
count = 0
while count < menu_items
	count += 1
	puts "#{count}. #{adj.sample} #{prep.sample} #{rare_animals.sample}"
end
