# outputs welcome
puts "Welcome to Random Menu Generator!"
print "How many meals would you like to see? "
how_many = gets.chomp

# outputs error when nil response or response does not include a number
numbers = [ "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" ]
how_many_array = []
how_many_array.push(how_many)
unless how_many.length != 0 && how_many_array.all? {|num| numbers.include?(num) } #numbers.any? { |num| how_many.include?(num)}
  puts "That doesn't make any sense. Please enter a number."
end

# assigns array items
adj1 = [ "chunky", "raunchy", "gelatinous", "gooey", "creamy", "flakey", "molten", "spongy", "corpulent", "animistic", "languid", "greased"]
adj2 = [ "boozy", "spiced", "creamed", "drunken", "irksome", "steamed", "grilled", "braised", "herbal", "massaged", "moist", "buttered" ]
food = [ "taco", "cake", "kimchi", "octopus", "pie", "stirfry", "sliders", "cocktail", "turnover", "dumpling", "meatloaf", "waffle" ]

# assigns num initial value of 0
num = 0

# randomize order of elements in each array
adj1_shuffle = adj1.shuffle
adj2_shuffle = adj2.shuffle
food_shuffle = food.shuffle

# user input: how many meals do you want? Converted to integer.
how_many = how_many.to_i

# assigns num (meal counter) initial value of 0
num = 0

if how_many > adj1.length
  puts "I don't have enough information to make that many delicious meals. \nNext time, enter a number between 0 and #{adj1.length}"

elsif how_many > 0 && how_many <= adj1.length
  puts "Fantastic! Here are your next #{how_many} meals."
  # increments num, then outputs element in index num - 1 until num is equal to the length of the first array
  until num == how_many
    num += 1
    puts "#{num}. #{adj1_shuffle[ num - 1 ]} #{adj2_shuffle[ num - 1]} #{food_shuffle[ num - 1 ]}"
  end

elsif how_many == 0
  puts "I guess you're not hungry. \nCome back when you want some delcious meal ideas. Goodbye!"

end
