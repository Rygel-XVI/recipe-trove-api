class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :delete]

  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def show
    render json: @ingredient
  end

  def new
    @ingredient = Ingredient.new
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

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :description)
  end

end
