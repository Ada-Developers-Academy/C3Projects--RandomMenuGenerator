#setting up arrays for each of the variables
ingredient = ["baby banana", "Runts banana", "corn ball", "plantain", "classic Dole banana", "manzano banana", "burro banana", "goldfinger banana", "ladyfinger banana", "golden beauty banana"]
prepared = ["seared", "fried", "braised", "corn-balled", "dipped", "grilled", "steamed", "sauteed", "smoked", "baked"]
adjective = ["chocolatey", "cheesy", "candied", "salted", "spicy", "sugar-coated", "firey", "crunchy", "caramelized", "breaded"]
#creating a variable to track the smallest array length so that I can alert the user to how many unique menu items they can create
item_count = [ingredient.length, adjective.length, prepared.length].min

#welcome message
puts "\n\nWelcome to Bluth's Bananas\n \n"

#prompting the user for a numerical value and then storing that value in the variable user_count
puts "How many of our glorious menu items would you like to see today?"
user_count = gets.chomp

#if the user entered something other than a numerical value they will be prompted to try again until
#they enter a numerical value
while user_count != "0" && user_count.to_i == 0
  puts "You need to use a numberical value."
  puts "How many of our glorious menu items would you like to see today?"
  user_count = gets.chomp
end

#special message if the user states that they do not want to see any menu items
if user_count == "0"
    puts "\nChicken!!!\n
    Caw! Ca-caw! Ca-caw! Ca-caw!\n"

#if the user selects a number less than or equal to the number of available array items, the program
#will insure that none of the array itemsare use more than once
elsif user_count.to_i <= item_count
  #setting up a counter to track how many times the block has run
  count = 0
  #in the silver level user_count was menu_count
  user_count = user_count.to_i
    until
    #the code will run until the number of times the block has run(count)
    #equals the number of menu items requested(user_count)
    count == user_count
    count += 1
    ing = ingredient.sample
    #deletes the items used from the array so that there are no repeating items
    ingredient.delete(ing)
    adj = adjective.sample
    adjective.delete(adj)
    prep = prepared.sample
    prepared.delete(prep)
    menu_item = "\t#{count}) #{adj} #{prep} #{ing}"
    puts menu_item
    end
else
    #setting up a counter to track how many times the block has run
    count = 0
    #in the silver level user_count was menu_count
    user_count = user_count.to_i
    until
    #the code will run until the number of times the block has run(count)
    #equals the number of menu items requested(user_count)
    count == user_count
    count += 1
    ing = ingredient.sample
    adj = adjective.sample
    prep = prepared.sample
    menu_item = "\t#{count}) #{adj} #{prep} #{ing}"
    puts menu_item
    end
end
