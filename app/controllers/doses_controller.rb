class DosesController < ApplicationController
  def index
    @doses = Dose.all
    @dose = Dose.new
    @cocktail = Cocktail.all
    @ingredient = Ingredient.all
  end

  def create
    @ingredient = Ingredient.find_by_name(ingredient_params[:ingredient])
    @cocktail = Cocktail.find_by_name(cocktail_params[:cocktail])
    @description = params[:dose][:description]

    # @cocktail = Cocktail.find(params[:cocktail_id])

    @doses = Dose.new(description: @description, ingredient_id: @ingredient.id, cocktail_id: @cocktail.id)
    @doses.save
    redirect_to doses_path
  end

  private

  def ingredient_params
    params.require(:dose).permit(:id, :name, :ingredient)
  end

  def cocktail_params
    params.require(:dose).permit(:id, :name, :cocktail)
  end


  # private

  # def taking_ingredient
  #   respond_to do |format|
  #     format.html { render :doses }
  #   end
  # end
end
