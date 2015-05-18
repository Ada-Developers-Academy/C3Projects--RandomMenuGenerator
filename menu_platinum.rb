# Lila Garcia
# Random Menu Generator -- Dessert (menu items are geneated by user input)

# Create empty arrays of menu items

# adjectives
descriptors = []

# cooking prep
style = []

# foods
foods = []

# Prompts for user input
puts "Hello! I am here to build you a menu."
puts "Please enter the number of menu items you would you like to see." 
array_count = $stdin.gets.chomp.to_i 

puts "Please list #{array_count} descriptive food adjectives (like \"spicy\"), then press enter after each one."

# loops push user input into arrays, and checks for no input 
while descriptors.length < array_count
	adjectives = gets.chomp
	while adjectives.empty?
		puts "Oops, looks like you didn't put anything! Please enter #{array_count} food adjectives."
		adjectives = gets.chomp
	end
	descriptors.push adjectives
end

puts "Now please list #{array_count} methods of past tense verbs (such as \"mashed\", then press enter after each one. "

while style.length < array_count
	random = gets.chomp
	while random.empty?
		puts "Oops, looks like you didn't put anything! Please enter #{array_count} past tense verbs."
		random = gets.chomp
	end
	style.push random
end

puts "Finally, please enter #{array_count} mythical creatures, then press enter after each one."

while foods.length < array_count
	fav = gets.chomp
	while fav.empty?
		puts "Oops, looks like you didn't put anything! Please enter #{array_count} mythical creatures."
		fav = gets.chomp
	end
	foods.push fav
end

# Loop!

puts "Great! Here is your menu:"
counter = 0 #counter keeps loop running until menu items == array_count
until counter == array_count
	counter += 1
	one = descriptors.sample # saves randomly selected member
	descriptors.delete(one) #removes previously selected member and deletes to avoid repeats
	two = style.sample
	style.delete(two)
	three = foods.sample
	foods.delete(three)
	puts " #{counter}. #{one} #{two} #{three}" #prints menu items
end



