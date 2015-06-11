# Random Menu Generator

food_adj_1_array = [ "Artisan" , "Cage-free" , "Conventionally raised" , "Grass-fed" , "Paleo" , "Unctuous" , "Homemade" , "Guilt-free" , "Gourmet" , "Fork-tender" , "Scrumptious", "Delectable", "Pungent", "Hand-cut", "Gently-priced"] 
food_adj_2_array = [ "steaming" , "rich" , "yummilicious", "organic" , "toothsome" , "sinful" , "decadent" , "sorry-I'm-not-sorry-I'm-eating-this" , "addictive" , "lip-smacking", "nom-nom-nom", "crispy", "mouth-watering", "deconstructed", "re-imagined"]
food_item_array = [ "swedish meatballs" , "zucchini chips" , "rosemary potatoes" , "frittata", "souffle" , "sugar snap peas" , "kale salad" , "bread pudding" , "kebabs" , "veggie hash", "wood fired pizza", "black bean burger", "brussel sprouts", "chicken & waffles", "fried pickles"]

# permanently suffles each of the arrays
food_adj_1_array.shuffle!
food_adj_2_array.shuffle!
food_item_array.shuffle!

food_adj_1_array.length.times do |index_num|
	food_adj_1 = food_adj_1_array[index_num]
	food_adj_2 = food_adj_2_array[index_num]
	food_item = food_item_array[index_num]

	puts "#{index_num + 1}. #{food_adj_1} #{food_adj_2} #{food_item}"
end

