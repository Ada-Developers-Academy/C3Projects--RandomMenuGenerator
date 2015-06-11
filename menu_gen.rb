# Random Menu Generator - Assignment 2
# Silver: Use any number of menu items. So if you expand your arrays to
#   contain 15 or 20 items, your program will show a list of 15 or 20 items.
# Gold: Expand your solution to ensure that no descriptive term in a menu item is ever repeated.
#   Expand your solution to allow the user to determine how many items they'd like to see via user input.

# What are you eating?
type = ["sandwich", "pasta", "panini", "salad", "appetizer",
  "buffet", "dinner", "sandwich", "popcorn", "steak",
  "bacon", "watermelon", "peppers", "enchilladas", "fries",
  "waffles", "pancakes", "pizza", "macaroni and cheese", "smoothy"]

# where is the recipe from/style?
style = ["cajun", "italian", "mexican", "french", "southern",
  "chinese", "japanese", "chinese", "indian", "moroccan",
  "sushi", "finger food", "snack", "breakfast", "elevenses",
  "fusion", "vegan", "gluten-free", "persian", "local"]

# self-explanatory
descriptor = ["fresh", "tasty", "crusty", "brittle", "butter",
  "savory", "sweet", "slimy", "gooey", "salty",
  "monstrous", "thick", "icey", "steamy", "chocolatey",
  "appetizing", "braised", "broiled", "caramelized", "soggy"]

# shuffle the arrays up!
type.shuffle!
style.shuffle!
descriptor.shuffle!

# get the user's input on how many menu items they want to see
puts "Please select between 0 - 20 how many food menu items you would like to see: "
menu_length = gets.chomp

# this loop will check to make sure user input is a number
while (menu_length.to_i.to_s != menu_length) && (menu_length.to_f.to_s != menu_length)
  puts "Please select a valid numerical number in between 1 and 20
for the number of food items you'd like on your menu: "
  menu_length = gets.chomp
end

# loop runs while the number is not in between 0 and 20
while (menu_length.to_i < 0) || (menu_length.to_i > 20)
  puts "The number you entered is not within the bounds of possible menu item."
  puts "Please enter a number in between 0 and 20."
  menu_length = gets.chomp
end

puts "Number of menu items: #{menu_length}."

# loop runs until the menu items equal the number the user entered.
i = 1
until i == (menu_length.to_i + 1)
  puts "#{i}: #{descriptor[0]} #{style[0]} #{type[0]}"
  # shift method removes the 1st element of an array
  type.shift
  style.shift
  descriptor.shift
  i += 1
end
