require "colorize"

first = ["Purple".magenta, "Yummy".light_blue.underline, "Silky".red.underline, "Orange".light_red,
  "Mushy".green, "Crunchy".light_yellow.bold, "Fizzy".blue, "Gooey".cyan.bold, "Slimy".light_green,
  "Dry".yellow, "Warm".light_magenta.bold, "Moist".light_cyan.bold, "Hot".light_white]
second = ["Baked".red.underline, "Fried".light_magenta.bold, "Steamed".light_cyan, "Creamed".light_yellow,
  "Boiled".blue, "Sauteed".yellow.bold, "Preserved".cyan.underline, "Grilled".magenta, "Frozen".light_blue.underline,
  "Raw".light_red.bold, "Fermented".green,"Rolled".light_green.bold, "Stacked".light_white.underline]
third = ["Potatoes".cyan, "Salmon".light_magenta.bold, "Cheese".blue.bold, "Grapes".magenta, "Crackers".green,
  "Rice".light_cyan.bold, "Celery".light_green.underline, "Blueberries".light_blue.underline, "Milk".light_white,
  "Steak".red.bold, "Noodles".light_yellow.bold, "Hamburger".light_red.bold, "Tacos".yellow.underline]

count = 1
#make the count depend on the length of the first array since we assume they are all the same length
until (count > first.length)
  # select a random element from each array and have it print with the count
  puts "#{count}. #{first.sample} #{second.sample} #{third.sample}"
  #make the count change so it goes up
  count += 1
end
