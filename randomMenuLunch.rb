# Random Menu Generator (RMG Lunch)

descriptor1 = ["fresh", "bite-size", "aromatic", "aged", "famous", "classic", "delicious", "delightful", "fantastic", "traditional"]
descriptor2 = ["baked", "boiled", "caramelized", "creamy", "crunchy", "rosted", "sliced", "smoked", "grilled", "crisp"]
ingredient = ["eggs", "cheese", "chicken", "tomatoes", "steak", "salmon", "beef", "garlic", "mushrooms", "sausage"]

(1..ingredient.length).each do |i|
  a = rand(descriptor1.length)
  b = rand(descriptor2.length)
  c = rand(ingredient.length)
  puts "#{i}. #{descriptor1[a]} #{descriptor2[b]} #{ingredient[c]}"
end

# Some explanations:
# ……………………………………………………………………………………………………………………………………………………………………………………………………………………………………………………………
# To make the number of menu items equal to the number of items in arrays we use
# (1..array.length). Now if we have 7 items in array, there will be 7 menu items
# 1. ...
# 2. ...
# ...
# 7. ...
# In RMG Bronze, we used rand(10) as we had 10 items in every array
# Since we can now add or delete items from our arrays, rand(10) is n/a any more.
# We used rand(array.length) instead.
# ……………………………………………………………………………………………………………………………………………………………………………………………………………………………………………………………

# NOTE
# code works correctly as long as we add or delete the same number of items from  arrays
# i.e. each array has to have the same quantity of items.
