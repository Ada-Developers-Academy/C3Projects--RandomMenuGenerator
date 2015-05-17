# Random Menu Generator - Assignment 2
# Silver: Use any number of menu items

# What are you eating?
type = ["sandwich", "pasta", "panini", "salad", "appetizer",
  "buffet", "dinner", "sandwich", "popcorn", "steak",
  "bacon", "watermelon", "peppers", "enchilladas", "fries"]

# where is the recipe from/style?
style = ["cajun", "italian", "mexican", "french", "southern",
  "chinese", "japanese", "chinese", "indian", "moroccan",
  "sushi", "finger food", "snack", "breakfast", "elevenses"]

# self-explanatory
descriptor = ["fresh", "tasty", "crusty", "brittle", "butter",
  "savory", "sweet", "slimy", "gooey", "salty",
  "monstrous", "thick", "icey", "steamy", "chocolatey"]

# shuffle the arrays up!
type.shuffle!
style.shuffle!
descriptor.shuffle!

i = 1
while type.length > 0
  puts "#{i}: #{descriptor[0]} #{style[0]} #{type[0]}"
  type.shift
  style.shift
  descriptor.shift
  i += 1
end
