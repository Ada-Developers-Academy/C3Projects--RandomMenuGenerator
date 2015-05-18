puts "~Le Dinner Menu~"

## three arrays for describing menu items
adjective = ["fatty", "meaty", "decadent", "skinny",  "prickly", "room-temperature", "sultry", "heated", "dry", "moist"]
cooking_method = ["fried", "impaled", "battered", "beaten", "tenderized", "smashed", "torched", "live", "infused", "vegan"]
food = ["snake scales", "pandas", "Hagrid beards", "piglets", "tofurkey", "whale steak", "unicorn horns", "leprechauns", "pikachus", "walruses"]

# I used a while loop to output meals equal to any number of elements in an array starting at 1
meal_count = 1
while meal_count <= adjective.length
  puts "#{meal_count}. #{adjective.sample} #{cooking_method.sample} #{food.sample}" # called the .sample method on each array to choose an element randomly
  meal_count += 1 # meal count starts at 1 and increments by one until items outputted equals to # of elements in the arrays
end
