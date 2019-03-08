class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :delete]

  def index
    if params[:query] != 'undefined' && params[:query].present?
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
    @recipe = Recipe.new
  end

  def create
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
