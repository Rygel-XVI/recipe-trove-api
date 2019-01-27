class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :recipes, through: :recipe_ingredients
end
