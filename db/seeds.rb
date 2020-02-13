# db/seeds.rb
puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts 'Creating ingredients...'
lemon = Ingredient.create(name: "Lemon")
ice = Ingredient.create(name: "Ice")
mint_leaves = Ingredient.create(name: "Mint Leaves")

puts 'Creating cocktails...'
mojito = Cocktail.create(name: 'Mojito')
caipi = Cocktail.create(name: 'Caipi')
moscow_mule = Cocktail.create(name: 'Moscow Mule')

puts 'Creating doses...'
Dose.create(description: 'Very sweet', cocktail: mojito, ingredient: lemon)
Dose.create(description: "Mint", cocktail: mojito, ingredient: mint_leaves)
Dose.create(description: 'A cocktail for crazy night', cocktail: caipi, ingredient: ice)
Dose.create(description: 'Surprise Cocktail', cocktail: moscow_mule, ingredient: mint_leaves)

puts 'Finished!'
