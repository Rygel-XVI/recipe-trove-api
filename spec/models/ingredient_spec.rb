require "rails_helper"

RSpec.describe Ingredient, type: :model do
  before(:each) do
    @ingredient1 = Ingredient.create!(name: "Caraway Seeds", description: "Caraway seeds are popular among our German customers as they are vital to the traditional taste of rye bread, sauerkraut, and many classic German and Eastern European dishes. These brightly flavored whole seeds will add a pop of flavor and a nice texture to homemade breads, stews, and roasts")

    @ingredient2 = Ingredient.create!(name: "Saffron, Coupe Grade Spanish", description: "This \"coupe\" grade Spanish saffron spice has powerful coloring properties and a lovely floral, grassy aroma. Due to its extremely rare nature, we were able to entice Julia Child into opening a one-pound tin for us during one of her visits to Milwaukee. Immediately upon opening, the exotic scent of these delicate flowers filled the air with their rare perfume, enchanting all of us! A signed tin remains with us as a memento of her visit.")

    @ingredient3 = Ingredient.new(description: "this ingredient has no name and should not initialize")

    @recipe1 = Recipe.new(name: "Sesame Chicken",
                              description: "If you want the perfect sesame chicken recipe this is it! You may want to increase the vinegar or lower the amount of sugar. It all depends on how sweet you want the sauce.",
                              rating: 4,
                              instructions: "
    Sift flour, 2 tablespoons cornstarch, baking soda, and baking powder into a bowl. Pour in low-sodium soy sauce, sherry, 2 tablespoons water, vegetable oil, and a dash of sesame oil; stir until smooth. Stir in chicken until coated with the batter, then cover, and refrigerate for 20 minutes.
    Meanwhile, bring chicken broth, sugar, vinegar, dark soy sauce, sesame oil, chile paste, and garlic to a boil in a saucepan over high heat. Dissolve 1/4 cup cornstarch into 1/2 cup of water, and stir into boiling sauce. Simmer until the sauce thickens and turns clear, about 2 minutes. Reduce heat to low, and keep sauce warm.
    Heat olive oil in a deep fryer or large saucepan to a temperature of 375 degrees F (190 degrees C).
    Drop in the battered chicken pieces, a few at a time, and fry until they turn golden brown and float to the top of the oil, 3 to 4 minutes. Drain on a paper towel lined plate. To serve, place fried chicken pieces onto a serving platter, and pour the hot sauce overtop. Sprinkle with toasted sesame seeds to garnish.
    ",
                              servings: 4,
                              id: 1)

    @recipe2 = Recipe.new(name: "BBQ NY Strip",
                          description: "A quick and easy way to make a tasty, tender steak on the grill! Marinate for a minimum of 2 hours.",
                          rating: 3,
                          instructions: "
    In a bowl, mix the olive oil, Worcestershire sauce, garlic, steak seasoning, red wine vinegar, basil, and Italian seasoning. Pour into a large resealable plastic bag. Pierce steaks on all sides with a fork, and place in the bag. Gently shake to coat. Seal bag and marinate steaks a minimum of 2 hours in the refrigerator.
    Preheat grill for high heat.
    Lightly oil the grill grate. Discard marinade. Place steaks on the grill, and cook 7 minutes on each side, or to desired doneness.",
                          servings: 10,
                          id: 2)

  @recipe1.ingredients << @ingredient1
  @recipe1.ingredients << @ingredient2
  @recipe2.ingredients << @ingredient1

  @recipe1.save!
  @recipe2.save!
  end


  it 'can be created' do
    expect(@ingredient1).to be_valid
  end

  it 'has a name' do
    expect(@ingredient1.name).to eq("Caraway Seeds")
    expect(@ingredient2.name).to eq("Saffron, Coupe Grade Spanish")
  end

  it 'has a description' do
    expect(@ingredient1.description).to eq("Caraway seeds are popular among our German customers as they are vital to the traditional taste of rye bread, sauerkraut, and many classic German and Eastern European dishes. These brightly flavored whole seeds will add a pop of flavor and a nice texture to homemade breads, stews, and roasts")
    expect(@ingredient2.description).to eq("This \"coupe\" grade Spanish saffron spice has powerful coloring properties and a lovely floral, grassy aroma. Due to its extremely rare nature, we were able to entice Julia Child into opening a one-pound tin for us during one of her visits to Milwaukee. Immediately upon opening, the exotic scent of these delicate flowers filled the air with their rare perfume, enchanting all of us! A signed tin remains with us as a memento of her visit.")
  end

  it 'has many recipes' do
    expect(@ingredient1.recipes).to include(@recipe1)
    expect(@ingredient1.recipes).to include(@recipe2)
  end

  it 'must have a name on creation' do
    expect(@ingredient3.id).to eq(nil)
  end

end
