#
texture = ["Gellatinous", "Spongy", "Semi-solid", "Pulpy", "Crystallized",
              "Frozen", "Condensed", "Liquid", "Loose", "Hot", "Fleshy",
              "Plump", "Chunky", "Soupy", "Putrid"]
descriptor = ["Herbaceous", "Sludgy", "Savory", "Pungent", "Zesty",
              "Frothy", "Fermented", "Dull", "Stale", "Watery", "Boiled",
              "Melted", "Sour", "Wad of"]
food = ["Cereal", "Spam", "Beef Tartare", "Pig's Feet", "Tofu",
              "Mung Beans", "Cheese", "Hot Pocket", "Lean Cuisine",
              "Bologne"]

menu = 1
while menu <= texture.length
  puts menu.to_s + ". " + texture.sample + ' ' + descriptor.sample + ' ' + food.sample
  menu = menu + 1
end
