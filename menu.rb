# Breakfast/Bronze program

# # random drink generator created by using a mixer, and juice, and a liquor

# juice = ["cranberry juice","agave nectar", "pineapple juice", "mango nectar", "grapefruit juice"]

# mixer = ["Sprite", "tonic water", "ginger ale", "ginger beer", "club soda"]

# liquor = ["rum", "vodka", "gin", "whiskey","tequila"]


# puts "Welcome to the random drink generator. Let's make happy hours at ADA\n more fun
# here's some drink ideas just to get you started!"

# x = 0
# 10.times do
# random_drink = juice[rand(juice.length)] +" with " + mixer[rand(mixer.length) ] +" and " + liquor[rand(liquor.length)]
# puts "#{x += 1}. How about " + random_drink + "?"

# end

#Random Menu Generator exercise - Silver/Lunch level

# Maybe I have too many bartenders as friends. Don't judge me. But my first thought was to create
#drink mixer. My initial bronze/breakfast formula as you can see from above was already set to silver/lunch parameters.
#however, I had to expand my arrays from the general selections I started with because they did not
#contain enough items.

# random drink generator created by using a mixer, and juice, and a liquor

# juice, mixer, and liquor are all arrays, which contain a liquid assigned to a certain place value
# within each array. e.g Cranberry juice holds the [0] place in the juice array.

juice = ["cranberry juice","agave nectar", "pineapple juice", "mango nectar", "grapefruit juice",
 "orange juice","pomegranate juice", "pear nectar", "peach nectar", "coconut water" ]

mixer = ["Sprite", "tonic water", "ginger ale", "ginger beer", "club soda", 
	"San Pellegrino Clementina", "coffee", "a splash of water", "coconut milk", "simple syrup", "Fresca", "Diet Coke", "orange soda"]

liquor = ["Bacardi Limon rum", "Absolut Mandarin vodka", "Hendricks gin", "Knob Creek bourbon",
	"Espolon tequila", "Southern Comfort", "Chopin vodka", "Violette","Malibu Coconut Rum", 
	"Disarrono Amaretto"]


puts "Welcome to the Random Drink Generator." 
puts "Let's make happy hours at ADA\n more fun."
puts "Here's some drink ideas just to get you started!"

# this formula says:" 
# x is 0. 
# Ten times (initial request of the exercise)do create a variable called random drink.
# random drink is an element from each of the arrays added together. Specifically,
# from each array (e.g. juice) pick a liquid at random (.rand) from all the liquids listed (.length)
# in the array.
# "with" and "and" are strings added to the equation to "pretty up" input.
# put out 10 rows of string ( designated above), number them by filling each with a value of "x +1"
# put out the string "How about" PLUS the random drink generated PLUS a question mark
# end the program.

x = 0
10.times do
random_drink = juice[rand(juice.length)] +" with " + mixer[rand(mixer.length) ] +" and " + liquor[rand(liquor.length)]

puts "#{x += 1}. How about " + random_drink + "?"

end
