class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :delete]

  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    render json: @ingredient
  end

  def edit
  end

  def update
    ingredient = Ingredient.find(params[:ingredient][:id])
    ingredient.update(ingredient_params)
    render json: ingredient
  end

  def delete
    set_ingredient
    @ingredient.destroy
    render json: @ingredient
  end

private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :description)
  end

end
