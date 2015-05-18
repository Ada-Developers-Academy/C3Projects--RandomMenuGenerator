adjectives = ["Creamy", "Tantilizing", "Toe-curling", "Finger-lickin'", "Savory", "Sweet", "Mushy", "Moist", "Spicy", "Rock-hard", "Boozy"]
cooking_method = ["Toasted", "Seared", "Glazed", "Handmade", "Baked", "Smoked", "Grilled", "Sautéed", "Fried", "Squashed", "Flambéed"]
food = ["Reindeer", "Strawberry Cake", "Rack of Lamb", "Veggies", "Plantains", "Hot Toddies", "Three-bean Salad", "Shrimp", "Sushi", "Horse Burger"]

loop = 1
longest_array = [adjectives.length, cooking_method.length, food.length].max

longest_array.times do
  a = Random.rand(adjectives.length - 1)
  cm = Random.rand(cooking_method.length - 1)
  f = Random.rand(food.length - 1)
  puts "#{loop}. #{adjectives[a]} #{cooking_method[cm]} #{food[f]}"
  loop += 1
end
