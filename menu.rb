# Elsa's random menu generator
# Due: 150511
# Breakfast + Lunch + 1 Dinner feature: Expand your solution to ensure that no descriptive term in a menu item is ever repeated.


# I'm not a foodie, so ha
food1 = ["spooky", "cumbersome", "alarming", "damp", "furry", "milky", "unnatural", "hissing", "lewd", "jumping", "wiggly"]

food2 = ["brined", "dried", "roasted", "fried", "pickled", "smoked", "sauteed", "steamed", "baked", "seared", "shredded"]

food3 = ["muffins", "lasagne", "muskrat", "liver", "horse", "waffles", "pheasant", "pudding", "trout", "delight", "mystery meat"]

# randomizes food
random_food1 = food1.shuffle
random_food2 = food2.shuffle
random_food3 = food3.shuffle

# sets up while loop for printing menu
# (uses +/- 1 do deal with the fact that arrays start at 0)
menu_counter = 1
until menu_counter >= (random_food1.length + 1)
  puts menu_counter.to_s + ". " + random_food1[menu_counter - 1] + " " + random_food2[menu_counter - 1] + " " + random_food3[menu_counter - 1]
  # iterate menu counter up and start again
  menu_counter += 1
end
