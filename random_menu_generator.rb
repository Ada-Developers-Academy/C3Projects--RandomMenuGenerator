# thanks to Kari - figured out RegEx
# testing that the user inputted only words and not numbers/symbols/etc.
def validate_alpha_chars(array)
  array.each do |word|
    if word.match(/[0-9]/)
      puts "The input '#{word}' is invalid and was deleted."
      array.delete(word)
    end
  end
end

puts "Welcome to the Random Menu Generator!\nPlease provide a list of adjectives, separated by commas."
adjectives = gets.chomp.split(",")
validate_alpha_chars(adjectives)

puts "\nPlease provide a list of cooking methods, separated by commas."
cooking_method = gets.chomp.split(",")
validate_alpha_chars(cooking_method)

puts "\nPlease provide a list of food, separated by commas."
food = gets.chomp.split(",")
validate_alpha_chars(food)

puts "\nHow many menu items would you like to see?"
num_of_items = gets.chomp.to_i

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
