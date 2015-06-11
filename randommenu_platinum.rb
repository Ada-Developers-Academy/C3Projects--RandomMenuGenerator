# Random Menu Generator

# create empty arrays
adjective = []
cook_method = []
food_item = []

# Get user input for how many item menus
puts "Hey! Let's generate a random menu for you.\nHow many items would you like on your menu?"
list_num = gets.chomp

# Error message for invalid number
until list_num.to_i.to_s == list_num && list_num.to_i > 0
  puts "That's NOT a valid number! Choose again."
  list_num = gets.chomp
end

# Convert user input from string to integer
list_num = list_num.to_i

# Prompt user to enter list of adjectives that equal the number of menu items
puts "\nGreat! #{list_num} items it is! \nLet's start by entering in #{list_num} adjectives!"

# Adds each adjective user inputs into the array
i = 1
until i > list_num
  user_adjective = gets.chomp
  adjective.push(user_adjective)
  i += 1
end

# Prompt user to enter list of cooking methods that equal number of menu items
puts "\nNow enter #{list_num} methods of cooking!"

# Adds each method of cooking user inputs into the array
i = 1
until i > list_num
  user_cook_method = gets.chomp
  cook_method.push(user_cook_method)
  i += 1
end

# Prompt user to enter list of food items that equal number of menu items
puts "\nFinally, enter #{list_num} different types of food items!"

# Adds each food item user inputs into the array
i = 1
until i > list_num
  user_food_item = gets.chomp
  food_item.push(user_food_item)
  i += 1
end

puts "\nHere's your custom menu! Enjoy!"

# Shuffles/randomizes order of items in each array
adjective = adjective.shuffle
cook_method = cook_method.shuffle
food_item = food_item.shuffle

# Outputs menu with no repeated items
menu = 1
until menu == list_num + 1
  puts "#{menu}. #{adjective[menu - 1]} #{cook_method[menu - 1]} #{food_item[menu - 1]}"
  menu += 1
end
