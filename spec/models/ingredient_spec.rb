require "rails_helper"

RSpec.describe Ingredient, :type => :model do
  before(:each) do
    @ingredient1 = Ingredient.create!(name: "Caraway Seeds", description: "Caraway seeds are popular among our German customers as they are vital to the traditional taste of rye bread, sauerkraut, and many classic German and Eastern European dishes. These brightly flavored whole seeds will add a pop of flavor and a nice texture to homemade breads, stews, and roasts")

    @ingredient2 = Ingredient.create!(name: "Saffron, Coupe Grade Spanish", description: "This \"coupe\" grade Spanish saffron spice has powerful coloring properties and a lovely floral, grassy aroma. Due to its extremely rare nature, we were able to entice Julia Child into opening a one-pound tin for us during one of her visits to Milwaukee. Immediately upon opening, the exotic scent of these delicate flowers filled the air with their rare perfume, enchanting all of us! A signed tin remains with us as a memento of her visit.")
  end

  it 'can be created' do
    expect(@ingredient1).to be_valid
  end

  it 'has a name' do
    expect(@ingredient1.name).to eq("Caraway Seeds")
    expect(@ingredient2.name).to eq("Saffron, Coupe Grade Spanish")
  end

  it 'has a description' do
    expect(@ingredient1.desciption).to eq("Caraway seeds are popular among our German customers as they are vital to the traditional taste of rye bread, sauerkraut, and many classic German and Eastern European dishes. These brightly flavored whole seeds will add a pop of flavor and a nice texture to homemade breads, stews, and roasts")
    expect(@ingredient2.description).to eq("This \"coupe\" grade Spanish saffron spice has powerful coloring properties and a lovely floral, grassy aroma. Due to its extremely rare nature, we were able to entice Julia Child into opening a one-pound tin for us during one of her visits to Milwaukee. Immediately upon opening, the exotic scent of these delicate flowers filled the air with their rare perfume, enchanting all of us! A signed tin remains with us as a memento of her visit.")
  end


end
