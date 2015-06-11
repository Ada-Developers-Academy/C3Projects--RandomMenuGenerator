# RANDOM FOOD GENERATOR

puts "Please enjoy one of our following specials:"
# Three arrays to hold food lists
adj_one = ["healthy", "cold", "luke-warm", "pan-seared", "slow-cooked", "steamed", "peppered", "pickled", "fresh", "homemade", "yummy"]
adj_two = ["acidic", "blazed", "burnt", "cheesy", "deep-fried", "encrusted", "fluffy", "frozen", "greesy", "infused", "marinated"]
food_type = ["roast", "enchiladas", "pancakes", "pastry", "custard", "salad", "casserole", "pasta", "vegetables", "soup", "popsicle"]


# Length of the arrays
array_length = adj_one.length

# Variable "i" will hold our iteration number for the loop below
i = 1

# Picks and prints food items
while i <= array_length
  # Shuffles old array (and saves it!), pulls the last item off and uses it as random pull
  random_adj_one = adj_one.shuffle!.pop
  random_adj_two = adj_two.shuffle!.pop
  random_food_type = food_type.shuffle!.pop

  puts "#{i}. #{random_adj_one} #{random_adj_two} #{random_food_type}"

  # Continutes iteration
  i += 1
end
