# Random Menu Generator for Boozy Desserts (Lunch) - Loraine Kanervisto
# Thanks Pinterest for the inspiration

#Creates an adjective array
adjs = %w[salty buttery spicy creamy frosty bitter sour sweet chunky hot cheesy burnt candied drizzled fluffy]

#Creates a booze array
booze = %w[champagne stout rum vodka moonshine Kahlua bourbon wine Bacardi tequila liquor Amaretto schnapps cider Fireball]

#Creates a dessert array
dessert = %w[coffee shake sorbet brownie waffle cake jello cookie doughnut pudding eclair creampuff pastry pie candy]

#Loop to print numbered list
list_num = 1
# This conditional allows the list to automatically adjust to the count of the adjective array.
while list_num <= adjs.size
  puts "#{list_num}. #{adjs.sample} #{booze.sample} #{dessert.sample}"
  list_num += 1
end
