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

  def show
    render json: @recipe
  end

  def new
    binding.pry
    @recipe = Recipe.new
  end

  def create
    # puts params
    # binding.pry
    @recipe = Recipe.new(recipe_params)
    ingredients = params[:recipe][:ingredients].map{|i| Ingredient.find(i)}
    @recipe.ingredients = ingredients
    @recipe.save
    render json: @recipe
  end

  def edit
  end

  def update
  end

  def delete
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
