# adjectives = ["Creamy", "Tantilizing", "Toe-curling", "Finger-lickin'", "Savory", "Sweet", "Mushy", "Moist", "Spicy", "Rock-hard", "Boozy"]
# cooking_method = ["Toasted", "Seared", "Glazed", "Handmade", "Baked", "Smoked", "Grilled", "Sautéed", "Fried", "Squashed", "Flambéed"]
# food = ["Reindeer", "Strawberry Cake", "Rack of Lamb", "Veggies", "Plantains", "Hot Toddies", "Three-bean Salad", "Shrimp", "Sushi", "Horse Burger"]

puts "Welcome to the Random Menu Generator!\nPlease provide a list of adjectives, separated by commas."
adjectives = gets.chomp.split(",")

puts "\nPlease provide a list of cooking methods, separated by commas."
cooking_method = gets.chomp.split(",")

puts "\nPlease provide a list of food, separated by commas."
food = gets.chomp.split(",")

puts "\nHow many menu items would you like to see?"
num_of_items = gets.chomp.to_i

# finds the length of the shortest array
# ensures generated menu has all 3 categories
min_items = [adjectives.length, cooking_method.length, food.length].min

if num_of_items > min_items
  puts "\nI'm sorry, we're only prepared to generate #{min_items} menu item(s)."
  num_of_items = min_items
end

# randomizes each categories' items into a new array
rando_adjective = adjectives.sample(min_items)
rando_cooking_method = cooking_method.sample(min_items)
rando_food = food.sample(min_items)

count = 1
# ASSEMBLES THE LIST
num_of_items.times do
  # don't forget to count by indices (hence [count - 1])
  puts "#{count}. #{rando_adjective[count - 1]} #{rando_cooking_method[count - 1]} #{rando_food[count - 1]}"
  count += 1
end
