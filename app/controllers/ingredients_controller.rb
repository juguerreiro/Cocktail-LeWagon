class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    @ingredient = Ingredient.create
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @plant = Ingredient.new(ingredient_params)
    @plant.save
    redirect_to ingredients_path
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
