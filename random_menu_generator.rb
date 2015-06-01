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

# Failed edge case testing.
#
# [adjectives, cooking_method, food].each do |array|
#   array.each do |word|
#     word.split("").each do |letter|
#       if !(/[[:alpha:]]/ === letter)
#         array.delete(word)
#       end
#     end
#   end
# end

# finds the length of the shortest array
# this ensures that the generated menu includes words from all 3 categories
min_items = [adjectives.length, cooking_method.length, food.length].min

if num_of_items > min_items
  puts "\nI'm sorry, we're only prepared to generate #{min_items} menu item(s)."
  num_of_items = min_items
end

# randomizes each categories' items into a new array
rando_adjective = adjectives.sample(min_items)
rando_cooking_method = cooking_method.sample(min_items)
rando_food = food.sample(min_items)

count = 0
# ASSEMBLES THE LIST
num_of_items.times do
  # don't forget to count by indices (hence [count - 1])
  puts "#{count + 1}. #{rando_adjective[count]} #{rando_cooking_method[count]} #{rando_food[count]}"
  count += 1
end
