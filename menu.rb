# creates a blank line
puts " "

# prints to separate lines
puts "Welcome to Chance's Diner!"
puts "Tonight's specials are: "

# creates dash lined separation between welcome message and menu
puts "--" * 15

# arrays from which menu items are pulled
descriptive = ["Buttery", "Watery", "Spicy", "Crispy", "Moist", "Chunky", "Crusty", "Mushy", "Soggy", "Tongue-scorching", "Mind-blowing"]
style = ["Brazilian", "Chinese", "Mexican", "Cajun", "Bacon-wrapped", "Cream Filled", "Deep Fried", "Cheese Crusted", "Sausage Stuffed", "Five Spice", "Beer Mop"]
main = ["Lamb Burger", "Chicken Feet", "Veal Steak", "Catfish", "Ravioli", "Octopus", "Sea Urchin", "Chicken Skin", "Gizzard", "Geoduck", "Beef Tongue"]

# counts how many items are in the array
count = descriptive.length
# initial value to be input into the loop
menu_item = 0
# as long as the menu item number is less than the total number of items in the array, the loop will continue
while menu_item < count
# prints the menu item number, shuffles arrays and pops off last item from
# shuffled list
  puts "#{menu_item += 1}. #{(descriptive.shuffle).pop} #{(style.shuffle).pop} #{(main.shuffle).pop}"
  end

# creates dash lined separation
puts "--" * 15
