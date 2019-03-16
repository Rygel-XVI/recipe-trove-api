class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :delete]

  def index
    if params[:query] != 'undefined' && params[:query].present?

      # separate out all this logic into the model and make it so it has to include all the ingredients
      ingredient_list = params[:query].split(',')
      @recipes = ingredient_list.map{|ingredient_id| Recipe.get_by_ingredient_id(ingredient_id.to_i)}
      @recipes.flatten!
    else
      @recipes = Recipe.all
    end
    render json: @recipes
  end

  def create

# add contingency if no ingredients are passed in
    @recipe = Recipe.new(recipe_params)
    ingredients = params[:recipe][:ingredients].map{|i| Ingredient.find(i)}
    @recipe.ingredients = ingredients
    @recipe.save
    render json: @recipe
  end

  def update
    recipe = Recipe.find(params[:recipe][:id])
    recipe.update(recipe_params)
    render json: recipe
  end

  def destroy
    set_recipe
    @recipe.destroy
    render json: @recipe
  end

private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description, :instructions, :rating, :servings, ingredients_attributes: [
      :name,
      :description
      ])
  end
end
