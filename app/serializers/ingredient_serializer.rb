class IngredientSerializer < ActiveModel::Serializer
  # cache

  # def cache_key
  #   [object, scope]
  # end

  attributes :id, :name, :description
  has_many :recipes, through: :recipe_ingredients
end
