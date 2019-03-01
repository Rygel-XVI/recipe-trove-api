# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@ingredient1 = Ingredient.create!(name: "Caraway Seeds", description: "Caraway seeds are popular among our German customers as they are vital to the traditional taste of rye bread, sauerkraut, and many classic German and Eastern European dishes. These brightly flavored whole seeds will add a pop of flavor and a nice texture to homemade breads, stews, and roasts")

@ingredient2 = Ingredient.create!(name: "Saffron, Coupe Grade Spanish", description: "This \"coupe\" grade Spanish saffron spice has powerful coloring properties and a lovely floral, grassy aroma. Due to its extremely rare nature, we were able to entice Julia Child into opening a one-pound tin for us during one of her visits to Milwaukee. Immediately upon opening, the exotic scent of these delicate flowers filled the air with their rare perfume, enchanting all of us! A signed tin remains with us as a memento of her visit.")

@ingredient3 = Ingredient.create!(name: "Salt", description: "makes everything yummy but may raise your blood pressure.")

@recipe1 = Recipe.new(name: "Sesame Chicken",
                          description: "If you want the perfect sesame chicken recipe this is it! You may want to increase the vinegar or lower the amount of sugar. It all depends on how sweet you want the sauce.",
                          rating: 4,
                          instructions: "
Sift flour, 2 tablespoons cornstarch, baking soda, and baking powder into a bowl. Pour in low-sodium soy sauce, sherry, 2 tablespoons water, vegetable oil, and a dash of sesame oil; stir until smooth. Stir in chicken until coated with the batter, then cover, and refrigerate for 20 minutes.
Meanwhile, bring chicken broth, sugar, vinegar, dark soy sauce, sesame oil, chile paste, and garlic to a boil in a saucepan over high heat. Dissolve 1/4 cup cornstarch into 1/2 cup of water, and stir into boiling sauce. Simmer until the sauce thickens and turns clear, about 2 minutes. Reduce heat to low, and keep sauce warm.
Heat olive oil in a deep fryer or large saucepan to a temperature of 375 degrees F (190 degrees C).
Drop in the battered chicken pieces, a few at a time, and fry until they turn golden brown and float to the top of the oil, 3 to 4 minutes. Drain on a paper towel lined plate. To serve, place fried chicken pieces onto a serving platter, and pour the hot sauce overtop. Sprinkle with toasted sesame seeds to garnish.
",
                          servings: 4)

@recipe2 = Recipe.new(name: "BBQ NY Strip",
                      description: "A quick and easy way to make a tasty, tender steak on the grill! Marinate for a minimum of 2 hours.",
                      rating: 3,
                      instructions: "
In a bowl, mix the olive oil, Worcestershire sauce, garlic, steak seasoning, red wine vinegar, basil, and Italian seasoning. Pour into a large resealable plastic bag. Pierce steaks on all sides with a fork, and place in the bag. Gently shake to coat. Seal bag and marinate steaks a minimum of 2 hours in the refrigerator.
Preheat grill for high heat.
Lightly oil the grill grate. Discard marinade. Place steaks on the grill, and cook 7 minutes on each side, or to desired doneness.",
                      servings: 10)

@recipe1.ingredients << @ingredient3
@recipe1.ingredients << @ingredient2
@recipe2.ingredients << @ingredient1

@recipe1.save!
@recipe2.save!
