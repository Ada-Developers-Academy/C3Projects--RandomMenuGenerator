adjectives = ['hot', 'cold', 'creamy', 'soft', 'hard', 'crunchy', 'warm', 'spicy', 'gelatinous',
  'chewy', 'crispy', 'juicy', 'tender', 'mushy', 'greasy', 'fluffy', 'frozen', ]

styles = ['fried', 'steamed', 'baked', 'braised', 'roasted', 'boiled', 'pressure-cooked', 'broiled',
  'freeze-dried', 'dehydrated', 'carmelized', 'stewed', 'pickled', 'seared',  'bar-b-qued', 'marinated',
  'candied']

foods = ['chicken','pork', 'shrimp', 'tilapia', 'beef', 'turkey', 'meatloaf', "pie", 'cookie', 'ice cream',
  'donut', 'cake','mashed potatoes', 'hamburger', 'sausage', 'bananas', 'crab' ]

prng = Random.new

(0..foods.length-1).each do |i|

  r1 = prng.rand(adjectives.length)
  r2 = prng.rand(styles.length)
  r3 = prng.rand(foods.length)

  puts "#{i+1}. #{adjectives[r1]} #{styles[r2]} #{foods[r3]}"

end
