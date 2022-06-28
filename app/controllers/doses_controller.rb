class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def create
    @ingredient = Ingredient.find(params[:id])
    @cocktail = Cocktail.find(params[:id])

    @doses = Dose.new(ingredient_id: @ingredient, cocktail_id: @cocktail)
    @doses.save
  end
end
