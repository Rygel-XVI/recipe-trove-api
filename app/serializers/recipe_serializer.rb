class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :rating, :servings
  has_many :ingredients, through: :recipe_ingredients

end
