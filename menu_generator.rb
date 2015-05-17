#
texture = ["Gellatinous", "Spongy", "Semi-solid", "Pulpy", "Crystallized",
              "Frozen", "Condensed", "Liquid", "Loose", "Hot", "Fleshy",
              "Plump", "Chunky", "Soupy"]
descriptor = ["Herbaceous", "Sludgy", "Savory", "Pungent", "Zesty",
              "Frothy", "Fermented", "Dull", "Stale", "Watery", "Boiled",
              "Melted", "Sour"]
food = ["Cereal", "Spam", "Beef Tartare", "Pig's Feet", "Tofu",
              "Mung Beans", "Cheese", "Hot Pocket", "Lean Cuisine",
              "Bologne"]

#This is an attempt to compare and store all of the array's individual lengths
#as a variable using conditionals
#if (texture.length == descriptor.length) && (texture.length == food.length) \
#    && (descriptor.length == food.length)

menu = 1
while menu <= texture.length
  puts menu.to_s + ". " + texture.sample + ' ' + descriptor.sample + ' ' + food.sample
  menu = menu + 1
end
