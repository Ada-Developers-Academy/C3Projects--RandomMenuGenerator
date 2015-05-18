food_desc = ["soft", "jiggly", "crunchy", "sweet", "cold", "hard", "brown", "sparkly", "stringy", "chewy", "bloody", "wet", "bitter", "salty", "buttery", "flakey", "natural" ]
cook_style = [ "poached", "steamed", "grilled", "baked", "fried", "broiled", "creamed", "braised", "barbecued", "cured", "stewed", "deep fried", "egg washed", "glazed", "pickled", "stir fried" ]
food_type = [ "beef", "brussle sprouts", "clams", "cake", "bourbon", "pie", "nuts", "sushi", "fish", "califlour", "turkey", "m&ms", "veggies", "eggs", "pate" ]
how_long = food_type.length

num_of_items = 0

# until continue_input == "n"
  
while num_of_items == 0
  puts "How many funny food items would you like to see. You can ask for #{how_long} or less items."
  num_of_items = gets.chomp.to_i
  if num_of_items > how_long || num_of_items == 0
    puts "Please enter a number less than or equal to #{how_long}"
  end
  
  (1..num_of_items).each do |num|
    food_desc_used = food_desc.sample
    food_desc_index = food_desc.find_index(food_desc_used)
    food_desc.delete_at(food_desc_index)
    cook_style_used = cook_style.sample
    cook_style_index = cook_style.find_index(cook_style_used)
    cook_style.delete_at(cook_style_index)
    food_type_used = food_type.sample
    food_type_index = food_type.find_index(food_type_used)
    food_type.delete_at(food_type_index)
    puts "#{num}. #{food_desc_used} #{cook_style_used} #{food_type_used}"
  end
end