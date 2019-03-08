class RecipeSerializer < ActiveModel::Serializer
  # cache

  # def cache_key
  #   [object, scope]
  # end

  attributes :id, :name, :description, :rating, :servings, :instructions
  has_many :ingredients, through: :recipe_ingredients

end
