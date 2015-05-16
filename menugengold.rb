# dinner level of project completed
# string literal to create arrays
descriptor = %w(sticky sloppy burning tender awesome frozen blackened roasted tepid wilted candied crusty boiled mushy pungent)
food = %w(tuna chicken bean tofu eggplant mushroom cheese veggie pork steak bison kangaroo grasshoppper fruit egg)
container = %w(stir-fry salad sandwich burger casserole taco pasta dumpling sushi burrito pierogi cake pie cookie smoothie)

# welcome string
puts "Welcome to Chez Elia! Would you like to decide how many items are on the menu? \n(Y or N)"
response = gets.chomp.upcase

# allow user to see the number of menu items they request, accounts for errant input
# and the length of the selector arrays
if response == "Y" || response == "YES"
  puts "Please select the number of menu items you would like (up to #{descriptor.length}):"
  menu_length =  gets.chomp
  while menu_length != "0" && menu_length.to_i == 0 || menu_length.to_i > descriptor.length
    puts "#{menu_length} is not a valid number. What number would you like?"
    menu_length = gets.chomp
  end
  menu_length = menu_length.to_i
else
  # creates variable for number of items in the array and prints that number if
  # user does not decide to choose the number of items
  puts "Ok, Bon Appetit!"
  menu_length = descriptor.length
end

puts "\n\tMENU"
# loop to iterate each menu of the item based on the number of elements in the first array/user input
menu_length.times do |n|
# making it so none of the elements in the array repeat
descriptor_unique = descriptor.shuffle!.first
descriptor.slice!(0)
food_unique = food.shuffle!.first
food.slice!(0)
container_unique = container.shuffle!.first
container.slice!(0)
#prints numbered item capitalized menu
 puts "#{n+1}. #{descriptor_unique.capitalize} #{food_unique} #{container_unique}"
end
