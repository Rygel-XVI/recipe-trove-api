class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  accepts_nested_attributes_for :ingredients

  validates :name, presence: true
  validates :ingredients, presence: true

# accepts an ingredient id and returns all recipes with that ingredient in it
  def self.get_by_ingredient_id(ingredient_id)
    Recipe.all.map{|r| r.ingredients.where(id: ingredient_id)}.uniq
  end

end
