# Brandi Wilson - RANDOM MENU GENERATOR (Dessert)

# welcome & prompt
question = "Would you like to see our menu (1) or create your own (2)?"
puts "WELCOME TO FOOD WORLD".center(question.length)

# list of words for the random menu
food_adj = ["Gooey", "Crumbley", "Fun", "Questionable", "Mysterious", "Rainbow", "Mutant", "Magical", "Chilly", "Cheesy", "Spikey", "Cute", "Smooth", "Happy", "Hilarious", "Cat-loved", "Radioactive", "Watery", "Numeric", "Confused"]
food_loc = ["Chinese", "Japanese", "British", "Scottish", "French", "Korean", "Indian", "Hawaiian", "American", "Canadian", "German", "Portugese", "Vietnamese", "Irish", "Italian", "African", "Australian", "Lihuanian", "Brazilian", "Mexican", "Egyptian"]
food = ["Chicken", "Duck", "Baked Potato", "Eggplant", "Pie", "Ice Cream", "Fish", "Bread", "Mold", "Lettice", "Donut", "Coffee", "Tea", "Water", "Smoothie", "Burger", "Pizza", "Corn", "Rice", "Spaghetti", "Salad", "Apple"]

# sorts the above arrays by length & assigns the shortest array length as the max number of available menu items
max_lengths = [food_adj.length, food_loc.length, food.length].sort
number_of_menu_items = max_lengths[0]

while true   # requires if statement with "break" to break the loop

  puts "#{question}"
  user_input = gets.chomp.strip.to_i

  # loop repeats until user enters a 1 or 2
  until (user_input == 1) || (user_input == 2)
    puts "Please enter 1 to view our menu or 2 to create your own."
    user_input = gets.chomp.strip.to_i
  end

  # if the user wanted to see a pre-made menu
  if user_input == 1
    puts "How many menu items would you like to see?\n(Enter MAX for the full menu.)"   # prompt

    user_input = gets.chomp.upcase.strip   # receives user entered number or letters

    # loop repeats until user enters a number greater than 0 or MAX
    until (user_input.to_i > 0) || (user_input == "MAX")
      puts "I do not understand that number. Please enter a number greater than 0 or MAX."
      user_input = gets.chomp.upcase.strip
    end

    # tests if the user-entered number is larger than the menu can support; assigns MAX; or assigns the user-enetered number
    if user_input.to_i > number_of_menu_items
      puts "Alas, I wish we had #{user_input.to_i} menu items.\nYou will have to settle for #{number_of_menu_items} items."
    elsif user_input == "MAX"
      puts "We have #{number_of_menu_items} menu items."
    else
      number_of_menu_items = user_input.to_i
    end

    # creates dummy arrays based on the food words so they can be manipulated without messing up the original arrays
    temp_food_adj = Array.new(food_adj)
    temp_food_loc = Array.new(food_loc)
    temp_food = Array.new(food)

    count = 0   # for the menu numbering

    # prints the menu
    while count < number_of_menu_items

      # removes a random object in the array
      food1 = temp_food_adj.slice!(rand(temp_food_adj.length))
      food2 = temp_food_loc.slice!(rand(temp_food_loc.length))
      food3 = temp_food.slice!(rand(temp_food.length))

      menu_item = "#{food1} #{food2} #{food3}"

      # increases menu item count
      count += 1

      puts "#{count}. #{menu_item}"

    end   # end of while loop printing the menu

  # if the user wanted to make their own menu
  elsif user_input == 2
    puts "How many menu items would you like to add?"
    user_input = gets.chomp.strip.to_i

    # creates empty arrays for the user to fill in
    user_food_adj = []
    user_food_des = []
    user_food = []

    # prompts user for adjectives x (user_input) amount of times
    count = 1
    puts "Please provide #{user_input} adjective(s).\n(Press ENTER after every adjective.)"
    while count <= user_input
      print "#{count}. "
      user_food_adj[count - 1] = gets.chomp
      count += 1
    end

    # prompts user for discriptors x (user_input) amount of times
    count = 1
    puts "Please provide #{user_input} discriptor(s) (how cooked, origin, color, etc).\n(Press ENTER after every descriptor.)"
    while count <= user_input
      print "#{count}. "
      user_food_des[count - 1] = gets.chomp
      count += 1
    end

    # prompts user for food x (user_input) amount of times
    count = 1
    puts "Please provide #{user_input} food item(s).\n(Press ENTER after each food entry.)"
    while count <= user_input
      print "#{count}. "
      user_food[count - 1] = gets.chomp
      count += 1
    end

    puts "Are you ready for your custom menu? WELL HERE IT IS:"
    count = 0   # for the menu numbering

    # prints the menu (this is not optimized--copy and pasted from above)
    while count < user_input

      # removes a random object in the array
      food1 = user_food_adj.slice!(rand(user_food_adj.length))
      food2 = user_food_des.slice!(rand(user_food_des.length))
      food3 = user_food.slice!(rand(user_food.length))

      menu_item = "#{food1} #{food2} #{food3}"

      # increases menu item count
      count += 1

      puts "#{count}. #{menu_item}"

    end   # end of while loop printing the menu

  else   # should never trigger
    puts "I don't know how you got here, you shouldn't be here."
    break
  end   # end of if-elsif-else conditional (user menu choice)

  # asks user if they want to repeat the program
  puts "Would you like to re-enter Food World? Y / N"
  user_input = gets.chomp.upcase.strip

  # loop repeats until 'Y' or 'N' are entered by the user
  until (user_input == "Y") || (user_input == "N")
    puts "I only understand single-letter responses. Y / N?"
    user_input = gets.chomp.upcase.strip
  end

  if (user_input == "N")
    break   # breaks out of the while loop
  end

end   # end of outside while loop
