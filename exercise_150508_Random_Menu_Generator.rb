#### FILE_TITLE: exercise_150508_Random_Menu_Generator.rb

#### Establish initial arrays
vegetables = ["brussel sprout", "celery", "broccoli", "red cabbage", "pumpkin", "kale", "spinach", "wheatgrass", "avocado", "bell pepper", "cucumber", "squash", "tomato", "zucchini", "cauliflower", "pea", "peanut", "snap pea", "asparagus", "garlic", "lemongrass", "leek", "onion", "carrot", "ginger", "potato", "rutabaga", "sweet potato", "turnip", "yam", "wakame (seaweed)", "kombu (seaweed)"]
proteins = ["chicken", "turkey", "duck", "goose", "salmon", "tilapia", "tofu", "pork", "pulled pork", "ground beef", "steak", "turtle", "lentil", "greek yogurt", "cottage cheese", "egg", "tuna", "sardines", "black bean", "kidney bean", "bacon", "peanut butter"]
grains = ["quinoa", "barley", "wild rice", "oats", "millet", "noodles", "brown rice", "white rice", "tortillas", "potatoes", "sandwich", "crackers", "popcorn", "spaghetti"]

#### Remove duplicates in the arrays
vegetables.uniq!
proteins.uniq!
grains.uniq!

#### Shuffle arrays; Find minimum array length
veg_length = vegetables.shuffle!.length
prot_length = proteins.shuffle!.length
grain_length = grains.shuffle!.length

max_options = [veg_length, prot_length, grain_length].min

#### Prompt user for output length
puts "How many menu items would you like to see? I can give you up to #{max_options}."
user_length = gets.chomp.strip.delete(",")

loop do
  if (user_length.to_f == 0) && (user_length != "0")
    puts "That's not a number! Try again. How many menu items would you like to see? I can give you up to #{max_options}."
  elsif user_length.to_f % 1 != 0
    puts "I need whole numbers! Try again. How many menu items would you like to see? I can give you up to #{max_options}."
  elsif user_length.to_i > max_options
    puts "That's too many! Try again. I can give you up to #{max_options}. How many menu items would you like to see?"
  else
    break
  end
  user_length = gets.chomp.strip.delete(",")
end

user_length = user_length.to_i

puts "\nMENU ITEMS"
(1..user_length).each do |i|
  puts "#{i}. #{vegetables[i-1]} #{proteins[i-1]} #{grains[i-1]}"
end
