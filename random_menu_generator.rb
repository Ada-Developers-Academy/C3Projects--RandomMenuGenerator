adjectives = ["Creamy", "Tantilizing", "Toe-curling", "Finger-lickin'", "Savory", "Sweet", "Mushy", "Moist", "Spicy", "Rock-hard"]
cooking_method = ["Toasted", "Seared", "Glazed", "Handmade", "Baked", "Smoked", "Grilled", "Sautéed", "Fried", "Squashed"]
food = ["Reindeer", "Strawberry Cake", "Rack of Lamb", "Veggies", "Plantains", "Hot Toddies", "Three-bean Salad", "Shrimp", "Sushi"]

loop = 1

10.times do
  i = Random.rand(9)
  j = Random.rand(9)
  k = Random.rand(9)
  puts "#{loop}. #{adjectives[i]} #{cooking_method[j]} #{food[k]}"
  loop += 1
end
