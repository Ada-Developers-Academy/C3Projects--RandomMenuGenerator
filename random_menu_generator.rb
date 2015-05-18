adjectives = ["Creamy", "Tantilizing", "Toe-curling", "Finger-lickin'", "Savory", "Sweet", "Mushy", "Moist", "Spicy", "Rock-hard", "Boozy"]
cooking_method = ["Toasted", "Seared", "Glazed", "Handmade", "Baked", "Smoked", "Grilled", "Sautéed", "Fried", "Squashed", "Flambéed"]
food = ["Reindeer", "Strawberry Cake", "Rack of Lamb", "Veggies", "Plantains", "Hot Toddies", "Three-bean Salad", "Shrimp", "Sushi", "Horse Burger"]

# finds the length of the shortest array
# ensures generated menu has all 3 categories
min_items = [adjectives.length, cooking_method.length, food.length].min

# randomizes each categories' items into a new array
rando_adjective = adjectives.sample(min_items)
rando_cooking_method = cooking_method.sample(min_items)
rando_food = food.sample(min_items)

count = 1
# ASSEMBLES THE LIST
min_items.times do
  # don't forget to count by indices (hence [count - 1])
  puts "#{count}. #{rando_adjective[count - 1]} #{rando_cooking_method[count - 1]} #{rando_food[count - 1]}"
  count += 1
end
