class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :delete]

  def index
    # binding.pry
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def create
    # binding.pry
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    render json: @ingredient
  end

  def edit
  end

  def update
  end

  def delete
  end

private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :description)
  end

end
