class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :delete]

  def index
  end

  def show
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
